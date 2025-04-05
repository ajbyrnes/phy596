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

void write(int N=1e8, int autoflush=-30'000'000, int vecsize=50) {
    // Open output file
    TFile* f{TFile::Open(Form("hvector_%d_%d_%d.root", N, autoflush, vecsize), "RECREATE")};
    if (!f) return;

    // Create vectors to be stored in tree
    std::vector<float> vpx{}, vpy{}, vpz{}, vpt{};
    std::vector<int> vpint{};

    // Create tree
    TTree* t{new TTree("tvec", "Tree with vectors")};
    t->SetAutoFlush(autoflush);
    
    // Point branches at vectors
    t->Branch("vpx", &vpx);
    t->Branch("vpy", &vpy);
    t->Branch("vpz", &vpz);
    t->Branch("vpt", &vpt);
    t->Branch("vpint", &vpint);

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
            vpint.emplace_back(integer);

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
    int N{static_cast<int>(1e6)};
    int vecsize{50};

    std::vector<int> flushes{};
    flushes.emplace_back(0);
    flushes.emplace_back(-30'000'000);
    flushes.emplace_back(-1'000'000);
    flushes.emplace_back(1e4);
    flushes.emplace_back(1e2);

    const char* form{};

    // Timed write()
    for (const int& flush : flushes) {
        std::cerr << "Flush = " << flush << " and N = " << N << " and vec size = " << vecsize << std::endl;

        gBenchmark = new TBenchmark();
        form = Form("wr_hvec_N%d_F%d_Sz%d", N, flush, vecsize);
        gBenchmark->Start(form);
        
        write(N, flush);
        std::cout << std::endl;

        gBenchmark->Stop(form);
        gBenchmark->Print(form);
        delete gBenchmark;
    }

    return EXIT_SUCCESS;
}