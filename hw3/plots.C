#include <iostream>

#include <TAxis.h>
#include <TCanvas.h>
#include <TFile.h>
#include <TH1F.h>
#include <TH1I.h>
#include <TTree.h>

template <typename T>
void branchToHist(TBranch* branch, TH1* hist) {
    // Create a vector to hold the branch data
    std::vector<T>* vec{nullptr};
    branch->SetAddress(&vec);

    // Loop over the entries in the tree
    // Fill entries into histogram
    Long64_t nentries{branch->GetEntries()};
    for (Long64_t i{0}; i < nentries; ++i) {
        branch->GetEntry(i);
        for (size_t j{0}; j < vec->size(); ++j) {
            hist->Fill(vec->at(j));
        }
    }

}

void plots() {
    // Open file
    TFile* f{TFile::Open("hvector_1000000_F0_Bsz0_Vsz50.root", "READ")};
    if (!f || f->IsZombie()) {
        std::cerr << "Error opening file!" << std::endl;
        return;
    }

    // Get tree "tvec" from file
    TTree* tvec{static_cast<TTree*>(f->Get("tvec"))};
    if (!tvec) {
        std::cerr << "Error getting tree!" << std::endl;
        f->Close();
        return;
    }

    // Create histograms for each branch
    TH1F* vpxHist{new TH1F("vpxHist", "px distribution", 100, -4, 4)};
    TH1F* vpyHist{new TH1F("vpyHist", "py distribution", 100, -4, 4)};
    TH1F* vpzHist{new TH1F("vpzHist", "pz distribution", 100, 0, 1.1)};
    TH1F* vptHist{new TH1F("vptHist", "pt distribution", 100, 0, 4)};
    TH1I* vpintHist{new TH1I("vpintHist", "vpint distribution", 100, 0, 101)};

    // branchToHist<float>(tvec->GetBranch("vpx"), vpxHist);
    // branchToHist<float>(tvec->GetBranch("vpy"), vpyHist);
    // branchToHist<float>(tvec->GetBranch("vpz"), vpzHist);
    // branchToHist<float>(tvec->GetBranch("vpt"), vptHist);
    branchToHist<int>(tvec->GetBranch("vpint"), vpintHist);

    // Draw each histogram on its own canvas
    // TCanvas* c1{new TCanvas("c1", "px distribution", 800, 600)};
    // vpxHist->Draw();
    // c1->SaveAs("vpxHist.png");

    // TCanvas* c2{new TCanvas("c2", "py distribution", 800, 600)};
    // vpyHist->Draw();
    // c2->SaveAs("vpyHist.png");

    // TCanvas* c3{new TCanvas("c3", "pz distribution", 800, 600)};
    // vpzHist->Draw();
    // c3->SaveAs("vpzHist.png");

    // TCanvas* c4{new TCanvas("c4", "pt distribution", 800, 600)};
    // vptHist->Draw();
    // c4->SaveAs("vptHist.png");

    TCanvas* c5{new TCanvas("c5", "vpint distribution", 800, 600)};
    vpintHist->Draw();
    c5->SaveAs("vpintHist.png");
}