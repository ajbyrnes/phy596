//Originally authored by the ROOT Team: https://root.cern/doc/master/hvector_8C.html

#include <cstdio>
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
#include<TTreePerfStats.h>

#include "size.hpp"

int ntodo{10};

void read(char* fin, char* fout) {
    // Create empty histogram
    TH1F* hdisk{new TH1F("hdisk", "hdisk", 500, 0, 100)};
    
    for (int iter{0}; iter < ntodo; iter++) {
        // Open input file
        TFile* f{TFile::Open(fin, "READ")};
        if (!f) return;

        // Read tree from file
        TTree* t{};
        f->GetObject("tvec", t);

        // Create vectors to store branch data
        std::vector<float>* vpx{}, * vpy{}, * vpz{}, * vpt{};
        std::vector<int>* vpint{};

        // Point branches at vectors
        TBranch* bvpx{0};
        TBranch* bvpy{0};
        TBranch* bvpz{0};
        TBranch* bvpt{0};
        TBranch* bvpint{0};

        t->SetBranchAddress("vpx", &vpx, &bvpx);
        t->SetBranchAddress("vpy", &vpy, &bvpy);
        t->SetBranchAddress("vpz", &vpz, &bvpz);
        t->SetBranchAddress("vpt", &vpt, &bvpt);
        t->SetBranchAddress("vpint", &vpint, &bvpint);

        // Get number of entries in the tree
        int N{static_cast<int>(t->GetEntries())};

        // Create object to store stats
        TTreePerfStats* myIOStats{new TTreePerfStats("IOPerfStats", t)};

        // Loop over entries in the tree
        for (int i{0}; i < N; i++) {
            long long entry{t->LoadTree(i)};
            bvpx->GetEntry(entry);
            bvpy->GetEntry(entry);
            bvpz->GetEntry(entry);
            bvpt->GetEntry(entry);
            bvpint->GetEntry(entry);

            // Monitor progress
            if (i % 10'000 && iter > 0) {
                std::cerr << "\rLOOP [read()] iter = " << iter << ", i = " << i + 1 << " / " << N << std::flush;
            }
        }

        // Collect stats
        hdisk->Fill(myIOStats->GetDiskTime());

        // Disconnect branches from local variables before they fall out of scope
        t->ResetBranchAddresses();

        // Save stats to file
        if (iter == 0) {
            std::cerr << std::endl;
            myIOStats->SaveAs(fout);
        }
        
        // Close file with tree
        f->Close();

        // Cleanup
        delete myIOStats;
    }
    
    std::cout << std::endl;
    std::cout << "Disk Mean = " << hdisk->GetMean() << " and RMS/sqrt(N) = " << hdisk->GetRMS() / sqrt(ntodo) << std::endl;

    // Cleanup
    delete hdisk;
}

int main() {
    int N{SIZE};

    // std::vector<int> flushes{};
    // flushes.emplace_back(0);
    // flushes.emplace_back(-30'000'000);
    // flushes.emplace_back(-1'000'000);
    // flushes.emplace_back(1e4);
    // flushes.emplace_back(1e2);

    // int flush{0};

    std::vector<int> basketSizes{4, 8, 16, 32, 64, 128, 256, 512, 1024};

    // Timed read()
    // for (const int& flush : flushes) {
    for (const int& basketSize : basketSizes) {
        gBenchmark = new TBenchmark();
        gBenchmark->Start("read_hvector");
        
        std::cout << std::endl;
        std::cout << "<==== Basket Size: @ " << basketSize << "====>" << std::endl;
        // std::cout << "<==== Flush Setting: @ " << flush << "====>" << std::endl;

        // char* fname_in{Form("hvector_%d_%d_50.root", N, flush)};
        // char* fname_out{Form("stats_%d_%d_50.root", N, flush)};
        char* fname_in{Form("hvector_%d_F=%d_Bsz=%d_v=%d.root", N, 0, basketSize, 50)};
        char* fname_out{Form("stats_%d_F=%d_Bsz=%d_v=%d.root", N, 0, basketSize, 50)};
        read(fname_in, fname_out);

        gBenchmark->Stop("read_hvector");
        gBenchmark->Print("read_hvector");
        delete gBenchmark;
    }

    return EXIT_SUCCESS;
}