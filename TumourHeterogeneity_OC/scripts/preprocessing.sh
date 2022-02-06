#!/bin/bash

# Execute batch command to run preprocessing with the current used path
bsub -o preprocessing_output -W 04:00 -n 16 -R "rusage[mem=8192]" python ~/scRNA_shared_signatures/src/preprocessing/main.py +cancer=ovarian +results_path='/cluster/home/antoinco/thesis/TumourHeterogeneity_OC/dataset/preprocessed'
