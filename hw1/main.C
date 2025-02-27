#include "main.h"
// #include <ap_int.h>
// #include <ap_fixed.h> // Using fixed-point arithmetic for resource optimization
// #include <hls_stream.h>
#include <iostream>  // For debug prints
// #include "hls_math.h"
#include <fstream>
#include <iomanip>
#include <cstring>
#include <string>
// #include "fit.h"

using namespace std;

void fit(const int xs[], const int ys[], const int sigmas[], const int lasts[], const int tempN) {
	// Initialize per-event variables
	int numObservations{0};

	int eventX[1000]{};
	int eventY[1000]{};
	float eventSigma[1000]{};

	float S{0}, Sx{0}, Sy{0};
	float t{0}, Stt{0}, bSum{0};
	float a{0}, b{0}, sigmaA{0}, sigmaB{0};
	float chiSquaredNdof{0}, sumTerm{0};

	// Initialize per-observation variables
	int x{0}, y{0};
	float sigma{0}, sigmaSquared{0};
	bool last{0};

	// Iterate over arrays
	// Simulates reading lines from file
	// i.e. Once a value has been read from an array, we can't go back and read it again
	for (int i{0}; i < tempN; i++) {
		// Record new observation
		numObservations++;

		// Read data from arrays
		x = xs[i];
		y = ys[i];
		sigma = static_cast<float>(sigmas[i]);
		last = lasts[i];

		// Store data for final event calculations
		eventX[numObservations - 1] = x;
		eventY[numObservations - 1] = y;
		eventSigma[numObservations - 1] = sigma;

		// Perform per-observation calculations
		sigmaSquared = sigma * sigma;
		S += (1 / sigmaSquared);
		Sx += (x / sigmaSquared);
		Sy += (y / sigmaSquared);

		// Check if this is the last observation in the event
		if (last) {
			// Calculate t and anything involving t
			for (int j{0}; j < numObservations; j++) {
				// Perform preliminary per-event calulations
				t = (1 / eventSigma[j])* (eventX[j] - (Sx / S));
				// t = (1 / eventSigma[j]);
				Stt += (t * t);
				bSum += ((eventY[j] * t) / eventSigma[j]);
			}

			// Calculate final per-event variables
			b = bSum / Stt;
			a = (Sy - Sx * b) / S;
			sigmaA = (1 + (Sx * Sx) / (S * Stt)) / S;
			sigmaB = 1 / Stt;
			
			// Calcaluate chi-squared
			for (int j{0}; j < numObservations; j++) {
				sumTerm = (eventY[j] - a - (b * eventX[j])) / eventSigma[j];
				chiSquaredNdof += (sumTerm * sumTerm);
			}
			chiSquaredNdof /= (numObservations - 2);

			// Output results
			std::cout << "numObservations: " << numObservations << std::endl;
			std::cout << "S: " << S << std::endl;
			std::cout << "Sx: " << Sx << std::endl;
			std::cout << "Sy: " << Sy << std::endl;
			std::cout << "Stt: " << Stt << std::endl;
			std::cout << "a: " << a << std::endl;
			std::cout << "b: " << b << std::endl;
			std::cout << "sigmaA: " << sigmaA << std::endl;
			std::cout << "sigmaB: " << sigmaB << std::endl;
			std::cout << "chiSquaredNdof: " << chiSquaredNdof << std::endl;
			std::cout << std::endl;

			// Reset observation count, clear sums
			numObservations = 0;
			S = 0;
			Sx = 0;
			Sy = 0;
			Stt = 0;
			bSum = 0;

			exit(0);
		}
	}
}

int main() {
	fit(tempxs, tempys, tempsigmas, templasts, tempN);
	return 0;
}
