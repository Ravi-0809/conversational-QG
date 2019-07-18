#!/usr/bin/env bash

PYT=/home/ubuntu/anaconda3/envs/ques_gen/bin/python
DATA=/home/ubuntu/question_generation/conversational-QG/conversational-QG/data

cd code

${PYT} -u embeddings_to_torch.py \
    -emb_file_enc=/home/ubuntu/question_generation/conversational-QG/conversational-QG/data/glove.840B.300d.txt \
    -emb_file_dec=/home/ubuntu/question_generation/conversational-QG/conversational-QG/data/glove.840B.300d.txt \
    -output_file=${DATA}/processed/vocab.glove.840B.300d \
    -dict_file=${DATA}/processed/coqg.turn3.vocab.pt
