#!/usr/bin/env bash

PYT=python
DATA=/home/ubuntu/question_generation/conversational-QG/conversational-QGdata

cd code

${PYT} -u embeddings_to_torch.py \
    -emb_file_enc=/research/king2/yfgao/data/glove/glove.840B.300d.txt \
    -emb_file_dec=/research/king2/yfgao/data/glove/glove.840B.300d.txt \
    -output_file=${DATA}/processed/vocab.glove.840B.300d \
    -dict_file=${DATA}/processed/coqg.turn3.vocab.pt
