#include "fit.hpp"
#include <iostream>

#define readInputII 5
#define interII 5
#define finalII 5

#define readFactor 10
#define interFactor 10
#define finalFactor 10

#define BUFSIZE 50

void readStage(hls::stream<Observation, MAX_OBSERVATIONS>& input,
               hls::stream<fixed_type, DEPTH>& partialS,
               hls::stream<fixed_type, DEPTH>& partialSx,
               hls::stream<fixed_type, DEPTH>& partialSy,
               hls::stream<int_type, DEPTH>& x1,
               hls::stream<int_type, DEPTH>& x2,
               hls::stream<int_type, DEPTH>& y1,
               hls::stream<int_type, DEPTH>& y2,
               hls::stream<fixed_type, DEPTH>& sigmaDiv1,
               hls::stream<fixed_type, DEPTH>& sigmaSquaredDiv1,
               hls::stream<bool_type, DEPTH>& last1,
               hls::stream<bool_type, DEPTH>& last2,
               hls::stream<bool_type, DEPTH>& last3) {

	while (!input.empty()) {
		Observation obs = input.read();

		x1.write(obs.x);
		x2.write(obs.x);
		y1.write(obs.y);
		y2.write(obs.y);

		fixed_type sigmaInv = fixed_type(1) / obs.sigma;
		sigmaDiv1.write(sigmaInv);
		fixed_type sigmaSquaredInv = sigmaInv * sigmaInv;
		sigmaSquaredDiv1.write(sigmaSquaredInv);

		last1.write(obs.last);
		last2.write(obs.last);
		last3.write(obs.last);
		partialS.write(sigmaSquaredInv);
		partialSx.write(obs.x * sigmaSquaredInv);
		partialSy.write(obs.y * sigmaSquaredInv);
	}
//	readStage: while (!input.empty()) {
//		#pragma HLS PIPELINE II=readInputII
//		Observation buffer[MAX_OBSERVATIONS];
//		#pragma HLS ARRAY_PARTITION variable=buffer complete
//
//		bufferInput: for (int i = 0; !input.empty() && i < BUFSIZE; i++) {
//			buffer[i] = input.read();
//		}
//
//		processBufferedInput: for (int i = 0; i < BUFSIZE; i++) {
//			#pragma HLS UNROLL factor=BUFSIZE
//			Observation obs = buffer[i];
//
//			x1.write(obs.x);
//			x2.write(obs.x);
//			y1.write(obs.y);
//			y2.write(obs.y);
//
//			fixed_type sigmaInv = fixed_type(1) / obs.sigma;
//			sigmaDiv1.write(sigmaInv);
//			fixed_type sigmaSquaredInv = sigmaInv * sigmaInv;
//			sigmaSquaredDiv1.write(sigmaSquaredInv);
//
//			last1.write(obs.last);
//			last2.write(obs.last);
//			last3.write(obs.last);
//			partialS.write(sigmaSquaredInv);
//			partialSx.write(obs.x * sigmaSquaredInv);
//			partialSy.write(obs.y * sigmaSquaredInv);
//		}
//	}
}

void interStage1(hls::stream<fixed_type, DEPTH>& partialS,
				 hls::stream<fixed_type, DEPTH>& partialSx,
			     hls::stream<fixed_type, DEPTH>& partialSy,
				 hls::stream<bool_type, DEPTH>& last,
			     hls::stream<fixed_type, DEPTH>& SDiv1,
				 hls::stream<fixed_type, DEPTH>& SxDivS,
				 hls::stream<fixed_type, DEPTH>& SxSquaredDivS,
				 hls::stream<fixed_type, DEPTH>& SyDivS
				 ) {

	#pragma HLS PIPELINE II=interII
	inter1: while (!last.empty()) {
		#pragma HLS LOOP_TRIPCOUNT min=MAX_OBSERVATIONS max=MAX_OBSERVATIONS*MAX_EVENTS

		// Initialize per-event variables
		static fixed_type n{0}, sigma{0}, S{0}, Sx{0}, Sy{0};

		// Calculate first set of intermediate products
		S += partialS.read();
		Sx += partialSx.read();
		Sy += partialSy.read();

		if (last.read()) {
			// Write outputs
			SDiv1.write(fixed_type(1) / S);
			
			fixed_type SxDivSTemp{Sx / S};
			SxDivS.write(SxDivSTemp);
			SxSquaredDivS.write(SxDivSTemp * Sx);

			SyDivS.write(Sy / S);

			// Reset for next event
			S = Sx = Sy = 0;
		}
	}
}

void interStage2(hls::stream<int_type, DEPTH>& x,
				 hls::stream<int_type, DEPTH>& y,
			     hls::stream<fixed_type, DEPTH>& sigmaDiv1,
				 hls::stream<fixed_type, DEPTH>& SDiv1,
				 hls::stream<fixed_type, DEPTH>& SxDivS,
				 hls::stream<fixed_type, DEPTH>& SxSquaredDivS,
				 hls::stream<fixed_type, DEPTH>& SyDivS,
				 hls::stream<bool_type, DEPTH>& last,
				 hls::stream<Result>& resultStream) {

	// Get next of set stream values
	fixed_type SxDivSTemp{0};
	SxDivSTemp = SxDivS.read();

	// Initialize per-event variables
	fixed_type Stt{0}, bSum{0};

	#pragma HLS PIPELINE II=interII
	inter2: while (!last.empty()) {
		#pragma HLS LOOP_TRIPCOUNT min=MAX_OBSERVATIONS max=MAX_OBSERVATIONS*MAX_EVENTS
		fixed_type sigmaDiv1Temp{sigmaDiv1.read()};
		fixed_type t{sigmaDiv1Temp * (x.read() - SxDivSTemp)};
		Stt += (t * t);
		bSum += (t * y.read() * sigmaDiv1Temp);

		if (last.read()) {
			// Write partial result
			Result r{};
			r.sigmaB = (fixed_type(1) / Stt);
			r.b = (bSum * r.sigmaB);
			r.a = (SyDivS.read() - SxDivSTemp * r.b);
			r.sigmaA = (SDiv1.read() * SxSquaredDivS.read() * r.sigmaB);

			resultStream.write(r);

			// Reset for next event
			Stt = bSum = 0;

			// Get next set of stream values
			if (!SxDivS.empty()) SxDivSTemp = SxDivS.read();
		}
	}
}

void finalStage(hls::stream<Result, DEPTH>& resultStream,
				hls::stream<int_type>& x,
			    hls::stream<int_type>& y,
			    hls::stream<fixed_type, DEPTH>& sigma,
				hls::stream<bool_type, DEPTH>& last,
			    hls::stream<Result, MAX_EVENTS>& output) {


	// Get next partial result
	Result r{resultStream.read()};

	#pragma HLS PIPELINE II=finalII
	readResult: while (!last.empty()) {
		#pragma HLS LOOP_TRIPCOUNT min=MAX_OBSERVATIONS max=MAX_OBSERVATIONS*MAX_EVENTS
		// Initialize per-event variables
		static int_type n{0}, e{0};
		static fixed_type sumTerm{0},  chiSquared{0};

		sumTerm = (fixed_type(y.read()) - r.a - r.b * fixed_type(x.read()));
		chiSquared += (sumTerm * sumTerm) * sigma.read();

		n++;

		if (last.read()) {
			// Write result to output
			r.chiSquaredNdof = (chiSquared / (n - 2));
			r.n = n;
			output.write(r);

			// Reset for next event
			n = chiSquared = 0;

			// Get next partial result
			r = !resultStream.empty() ? resultStream.read() : Result{};
		}
	}
}

void fit(hls::stream<Observation, MAX_OBSERVATIONS>& input, hls::stream<Result, MAX_EVENTS>& output) {

	// Set up streams for intermediate results
	hls::stream<int_type, DEPTH> x1, x2, y1, y2;
	hls::stream<fixed_type, DEPTH> sigmaDiv1, sigmaSquaredDiv1;
	hls::stream<bool_type, DEPTH> last1, last2, last3;
	hls::stream<fixed_type, DEPTH> partialS, partialSx, partialSy;
	hls::stream<fixed_type, DEPTH> SDiv1, SxDivS, SxSquaredDivS, SyDivS;
	hls::stream<Result, DEPTH> resultStream;

	#pragma HLS DATAFLOW

	readStage(input, partialS, partialSx, partialSy, x1, x2, y1, y2, sigmaDiv1, sigmaSquaredDiv1, last1, last2, last3);
	interStage1(partialS, partialSx, partialSy, last1, SDiv1, SxDivS, SxSquaredDivS, SyDivS);
	interStage2(x1, y1, sigmaDiv1, SDiv1, SxDivS, SxSquaredDivS, SyDivS, last2, resultStream);
	finalStage(resultStream, x2, y2, sigmaSquaredDiv1, last3, output);
}
