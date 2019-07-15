#!/usr/bin/env bash

PYT=/content/cuda-repo-ubuntu1604-9-2-local_9.2.148-1_amd64
DATA=/content/conversational-QG/data

cd code

${PYT} -u embeddings_to_torch.py \
    -emb_file_enc=/research/king2/yfgao/data/glove/glove.840B.300d.txt \
    -emb_file_dec=/research/king2/yfgao/data/glove/glove.840B.300d.txt \
    -output_file=${DATA}/processed/vocab.glove.840B.300d \
    -dict_file=${DATA}/processed/coqg.turn3.vocab.pt
