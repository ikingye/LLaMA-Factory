#!/bin/bash
# NEED TO run `merge.sh` before using this script

CUDA_VISIBLE_DEVICES=0 llamafactory-cli export \
    --model_name_or_path ../../models/llama2-7b-sft \
    --template default \
    --export_dir ../../models/llama2-7b-sft-int4 \
    --export_quantization_bit 4 \
    --export_quantization_dataset ../../data/c4_demo.json \
    --export_size 2 \
    --export_legacy_format False
