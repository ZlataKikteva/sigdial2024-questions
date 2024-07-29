#!/bin/bash

# run the modified BERT evaluation code from huggingface (https://github.com/huggingface/transformers/tree/main/examples/pytorch/text-classification)
PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python python train_new.py --train_file ./data/ts_q_train.csv --test_file ./data/ts_q_test.csv --model_name bert-large-cased --do_train --do_predict --output_dir ./ts_q_bert-large-cased/ --overwrite_output_dir --seed 42 --max_seq_length 400  --learning_rate 2e-5 --per_device_train_batch_size 32

PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python python train_new.py --train_file ./data/ts_pq_train.csv --test_file ./data/ts_pq_test.csv --model_name bert-large-cased --do_train --do_predict --output_dir ./ts_pq_bert-large-cased/ --overwrite_output_dir --seed 42 --max_seq_length 400 --learning_rate 2e-5 --per_device_train_batch_size 32

PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python python train_new.py --train_file ./data/ts_pqr_train.csv --test_file ./data/ts_pqr_test.csv --model_name bert-large-cased --do_train --do_predict --output_dir ./ts_pqr_bert-large-cased/ --overwrite_output_dir --seed 42 --max_seq_length 400 --learning_rate 2e-5 --per_device_train_batch_size 32

PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python python train_new.py --train_file ./data/ts_qr_train.csv --test_file ./data/ts_qr_test.csv --model_name bert-large-cased --do_train --do_predict --output_dir ./ts_qr_bert-large-cased/ --overwrite_output_dir --seed 42 --max_seq_length 400 --learning_rate 2e-5 --per_device_train_batch_size 32

PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python python train_new.py --train_file ./data/ts_pr_train.csv --test_file ./data/ts_pr_test.csv --model_name bert-large-cased --do_train --do_predict --output_dir ./ts_pr_bert-large-cased/ --overwrite_output_dir --seed 42 --max_seq_length 400 --learning_rate 2e-5 --per_device_train_batch_size 32

PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python python train_new.py --train_file ./data/ts_binary_train.csv --test_file ./data/ts_binary_test.csv --model_name bert-large-cased --do_train --do_predict --output_dir ./ts_binary_bert-large-cased/ --overwrite_output_dir --seed 42 --max_seq_length 400 --learning_rate 2e-5 --per_device_train_batch_size 32

# copy the produced predict results to results to be used in the jupyter notebook
cp ts_pr_bert-large-cased/predict_results_question_type_classification.txt results/pr_bert.txt
cp ts_qr_bert-large-cased/predict_results_question_type_classification.txt results/qr_bert.txt
cp ts_pqr_bert-large-cased/predict_results_question_type_classification.txt results/pqr_bert.txt
cp ts_pq_bert-large-cased/predict_results_question_type_classification.txt results/pq_bert.txt
cp ts_q_bert-large-cased/predict_results_question_type_classification.txt results/q_bert.txt
cp ts_binary_bert-large-cased/predict_results_question_type_classification.txt results/ts_q_binary_bert.txt
