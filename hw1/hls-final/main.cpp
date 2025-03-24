#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

#include "fit.hpp"

int main() {
    // Open data file
    std::ifstream file("./data.txt", std::ios::in);

    // Check if file is open
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file" << std::endl;
        return 1;
    }

    // Create HLS streams for input data
    hls::stream<Observation, MAX_OBSERVATIONS> input;

    // Read observations from file and push into streams
    std::string line{};

    readInput: while (std::getline(file, line)) {
        // Parse line
        std::istringstream iss(line);
        std::string field{};

        ap_int<12> x_val, y_val, sigma_val;
        bool last_val;

        std::getline(iss, field, ',');
        x_val = std::stoi(field);

        std::getline(iss, field, ',');
        y_val = std::stoi(field);

        std::getline(iss, field, ',');
        sigma_val = std::stoi(field);

        std::getline(iss, field, ',');
        last_val = std::stoi(field);

        input.write({
        	x_val, y_val, sigma_val, last_val
        });
    }

    // Close file
    file.close();

    // Perform fit
    hls::stream<Result, MAX_EVENTS> output;
    fit(input, output);

    // Print results
    int e{1};
    while (!output.empty()) {
    	Result r{output.read()};
    	std::cout << "Event: " << e << std::endl;
    	std::cout << "\tnumObservations: " << r.n << std::endl;
    	std::cout << "\ta: " << r.a << std::endl;
    	std::cout << "\tb: " << r.b << std::endl;
    	std::cout << "\tsigmaA: " << r.sigmaA << std::endl;
    	std::cout << "\tsigmaB: " << r.sigmaB << std::endl;
    	std::cout << "\tchiSquaredNdof: " << r.chiSquaredNdof << std::endl;
    	std::cout << std::endl;

    	e++;
    }
}
