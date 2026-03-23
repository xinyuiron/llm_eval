cd evaluation
MODEL_NAME_OR_PATH=~/models/Qwen2.5-7B-Instruct
MODEL_NAME="Qwen2.5-7B-Instruct"
benchmark_datasets=("multifieldqa_en")
for task in "${benchmark_datasets[@]}"
do
    python -u LongBench/pred.py                     \
        --model_name_or_path $MODEL_NAME_OR_PATH    \
        --task $task
done

python -u LongBench/eval.py --model $MODEL_NAME