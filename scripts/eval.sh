PROJ=/home/ubuntu/question_generation/conversational-QG/cqg_without_coref/conversational-QG
# PYT=python
PYT2=python2

export CUDA_VISIBLE_DEVICES=0
HISTORY_TURN=3
DATE=2
MODEL_NAME=cqg
LCV=1
LCA=1
LF=1
LFH=1
N_STEP=2000

${PYT2} -u ${PROJ}/code/tools/eval/eval.py \
        -out=${PROJ}/data/pred/${DATE}_turn${HISTORY_TURN}_${MODEL_NAME}_lcv${LCV}_lca_${LCA}_lf${LF}_lfh_${LFH}_step_${N_STEP}_test.txt \
        -tgt=${PROJ}/data/coqg_data/coqg-test-tgt-3.txt