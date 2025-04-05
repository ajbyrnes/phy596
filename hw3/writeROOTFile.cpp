// Originally authored by the ROOT Team: https://root.cern/doc/master/hvector_8C.html

#include <iostream>
#include <vector>

#include <TBenchmark.h>
#include <TCanvas.h>
#include <TFile.h>
#include <TFrame.h>
#include <TH1F.h>
#include <TRandom.h>
#include <TSystem.h>
#include <TTree.h>

#include "size.hpp"

void write(int N=1e8, int autoflush=-30'000'000, int vecsize=50, bool setBasketSize=false, int basketSize=0) {
    // Open output file
    TFile* f{TFile::Open(Form("hvector_%d_F%d_Bsz%d_Vsz%d.root", N, autoflush, basketSize, vecsize), "RECREATE")};
    if (!f) return;

    // Create vectors to be stored in tree
    std::vector<float> vpx{}, vpy{}, vpz{}, vpt{};
    std::vector<int> vpint{};

    // Create tree
    TTree* t{new TTree("tvec", "Tree with vectors")};

    // Point branches at vectors
    t->Branch("vpx", &vpx);
    t->Branch("vpy", &vpy);
    t->Branch("vpz", &vpz);
    t->Branch("vpt", &vpt);
    // t->Branch("vpint", &vpint);

    // Set autoflush/basket sizes
    if (setBasketSize) {
        t->SetAutoFlush(0);
        t->SetBasketSize("vpx", basketSize);
        t->SetBasketSize("vpy", basketSize);
        t->SetBasketSize("vpz", basketSize);
        t->SetBasketSize("vpt", basketSize);
        // t->SetBasketSize("vpint", basketSize);
    }
    else {
        t->SetAutoFlush(autoflush);
    }

    // Generate random data for tree
    float percentComplete{0.0f};
    gRandom->SetSeed();

    for (int i{0}; i < N; i++) {
        // Monitor progress
        if (i % 10'000 == 0) {
            percentComplete = (static_cast<float>(i) / N) * 100.f;
            std::cerr << "\rLOOP [write()]: " << percentComplete << "% complete" << std::flush;
        }

        // Generate random value to be the number of points in this set of vectors
        int npx{static_cast<int>(gRandom->Rndm(1) * vecsize)};

        // Reset vectors
        vpx.clear();
        vpy.clear();
        vpz.clear();
        vpt.clear();
        vpint.clear();

        // Fill vectors with random values
        for (int j{0}; j < npx; j++) {
            Float_t px{}, py{}, pz{}, pt{};
            int integer{};

            gRandom->Rannor(px, py);
            pt = sqrt(px * px + py * py);
            pz = gRandom->Rndm(1);
            integer = static_cast<int>(gRandom->Rndm(1) * npx + npx);

            vpx.emplace_back(px);
            vpy.emplace_back(py);
            vpz.emplace_back(pz);
            // vpint.emplace_back(integer);

            // This gets pushed back twice on purpose
            vpt.emplace_back(pt);
            vpt.emplace_back(pt);
        } // End vector-filling loop

        // Fill tree with vectors
        t->Fill();
    } // End tree-filling loop 

    t->Print();
    f->Write();
    delete f;
}

int main() {
    int N{SIZE};    
    int vecsize{50};

    std::vector<int> flushes{};
    flushes.emplace_back(0);
    flushes.emplace_back(-30'000'000);
    flushes.emplace_back(-1'000'000);
    flushes.emplace_back(1e4);
    flushes.emplace_back(1e2);
    
    std::vector<int> basketSizes{4, 8, 16, 32, 64, 128, 256, 512, 1024};

    const char* form{};

    // Timed write()
    // for (const int& flush : flushes) {
    for (const int& basketSize : basketSizes) {
        // std::cerr << "Flush = " << flush << " and N = " << N << " and vec size = " << vecsize << std::endl;
        std::cerr << "Basket size = " << basketSize << " and N = " << N << " and vec size = " << vecsize << std::endl;

        gBenchmark = new TBenchmark();
        // form = Form("wr_hvec_N%d_F%d_Sz%d", N, flush, vecsize);
        form = Form("wr_hvec_N%d_Bsz%d_Sz%d", N, basketSize, vecsize);
        gBenchmark->Start(form);
        
        // write(N, flush);
        write(N, 0, vecsize, true, basketSize);
        std::cout << std::endl;

        gBenchmark->Stop(form);
        gBenchmark->Print(form);
        delete gBenchmark;
    }

    return EXIT_SUCCESS;
}