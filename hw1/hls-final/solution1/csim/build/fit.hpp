#ifndef FIT_H
#define FIT_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_math.h>
#include <hls_stream.h>
#include <array>

#define MAX_OBSERVATIONS 500
#define MAX_EVENTS 10
#define DEPTH 10

typedef ap_int<2> bool_type;
typedef ap_int<12> int_type;
typedef ap_fixed<64, 32> fixed_type;
//typedef float fixed_type;

struct Observation {
	int_type x;
	int_type y;
	int_type sigma;
	bool_type last;
};


struct Intermediate {
	fixed_type S;
	fixed_type Sx;
	fixed_type Sy;
};

struct Result {
	int_type n;
	fixed_type a;
	fixed_type b;
	fixed_type sigmaA;
	fixed_type sigmaB;
	fixed_type chiSquaredNdof;
};

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
			   hls::stream<bool_type, DEPTH>& last3);

void interStage1(hls::stream<fixed_type, DEPTH>& partialS,
				 hls::stream<fixed_type, DEPTH>& partialSx,
			     hls::stream<fixed_type, DEPTH>& partialSy,
				 hls::stream<bool_type, DEPTH>& last1,
			     hls::stream<Intermediate>& interStream);

void interStage2(hls::stream<int_type, DEPTH>& x,
				 hls::stream<int_type, DEPTH>& y,
				 hls::stream<fixed_type, DEPTH>& sigmaDiv1,
				 hls::stream<fixed_type, DEPTH>& SDiv1,
				 hls::stream<fixed_type, DEPTH>& SxDivS,
				 hls::stream<fixed_type, DEPTH>& SxSquaredDivS,
				 hls::stream<fixed_type, DEPTH>& SyDivS,
				 hls::stream<bool_type, DEPTH>& last,
				 hls::stream<Result>& resultStream);

void finalStage(hls::stream<Result, DEPTH>& resultStream,
				hls::stream<int_type>& x3,
			    hls::stream<int_type>& y3,
			    hls::stream<fixed_type, DEPTH>& sigma3,
				hls::stream<bool_type, DEPTH>& last3,
			    hls::stream<Result, MAX_EVENTS>& output);

void fit(hls::stream<Observation, MAX_OBSERVATIONS>& input, hls::stream<Result, MAX_EVENTS>& output);

#endif
