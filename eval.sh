
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks openbookqa --device 'cuda:0' --batch_size 64 --num_fewshot 0 --output_path results/openbookqa_0shot  
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks openbookqa --device 'cuda:0' --batch_size 32 --num_fewshot 5 --output_path results/openbookqa_5shot  


#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks race_middle --device 'cuda:0' --batch_size 64 --num_fewshot 0 --output_path results/race_middle_0shot 
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks race_middle --device 'cuda:0' --batch_size 32 --num_fewshot 5 --output_path results/race_middle_5shot 


#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks race --device 'cuda:0' --batch_size 64 --num_fewshot 0 --output_path results/race_high_0shot 
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks race --device 'cuda:0' --batch_size 32 --num_fewshot 5 --output_path results/race_high_5shot 

#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks openbookqa --device 'cuda:0' --batch_size 32 --num_fewshot 5 --output_path results/openbookqa_5shot  


#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks   lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --device 'cuda:0' --batch_size 64 --num_fewshot 0 --output_path results/common_tasks
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba-2.8b,dtype=float16 --tasks   lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --device 'cuda:0' --batch_size 32 --num_fewshot 5 --output_path results/common_tasks_5-shot

#############Mamba2
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba2-2.7b,dtype=float16 --tasks openbookqa,race,race_middle --device 'cuda:0' --batch_size 32 --num_fewshot 0 --output_path results/mamba2_openbookqa_race_0shot  
#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba2-2.7b,dtype=float16 --tasks openbookqa,race,race_middle --device 'cuda:0' --batch_size 16 --num_fewshot 5 --output_path results/mamba2_openbookqa_race_5shot > logs/mamba2_openbookqa_race_5shot.log 2>&1 &


#lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba2-2.7b,dtype=float16 --tasks  lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --device 'cuda:0' --batch_size 64 --num_fewshot 0 --output_path results/mamba2_common_tasks_0shot > logs/mamba2_common_0shot.log 2>&1 &
lm_eval --model mamba_ssm --model_args pretrained=state-spaces/mamba2-2.7b,dtype=float16 --tasks  lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --device 'cuda:0' --batch_size 16 --num_fewshot 5 --output_path results/mamba2_common_tasks_5shot > logs/mamba2_common_5shot.log 2>&1 &

# dcformerslim
#lm_eval --model hf --model_args pretrained=DCFormerSlim,revision=130000step,dtype=float16 --tasks openbookqa --device 'cuda:0' --batch_size 4 --num_fewshot 0 --output_path results/obqa_0shot >logs/obqa_0shot.log 2>&1



#ARC: 25-shot, arc-challenge (acc_norm)
#HellaSwag: 10-shot, hellaswag (acc_norm)
#TruthfulQA: 0-shot, truthfulqa-mc (mc2)
#MMLU: 5-shot, hendrycksTest-abstract_algebra,hendrycksTest-anatomy,hendrycksTest-astronomy,hendrycksTest-business_ethics,hendrycksTest-clinical_knowledge,hendrycksTest-college_biology,hendrycksTest-college_chemistry,hendrycksTest-college_computer_science,hendrycksTest-college_mathematics,hendrycksTest-college_medicine,hendrycksTest-college_physics,hendrycksTest-computer_security,hendrycksTest-conceptual_physics,hendrycksTest-econometrics,hendrycksTest-electrical_engineering,hendrycksTest-elementary_mathematics,hendrycksTest-formal_logic,hendrycksTest-global_facts,hendrycksTest-high_school_biology,hendrycksTest-high_school_chemistry,hendrycksTest-high_school_computer_science,hendrycksTest-high_school_european_history,hendrycksTest-high_school_geography,hendrycksTest-high_school_government_and_politics,hendrycksTest-high_school_macroeconomics,hendrycksTest-high_school_mathematics,hendrycksTest-high_school_microeconomics,hendrycksTest-high_school_physics,hendrycksTest-high_school_psychology,hendrycksTest-high_school_statistics,hendrycksTest-high_school_us_history,hendrycksTest-high_school_world_history,hendrycksTest-human_aging,hendrycksTest-human_sexuality,hendrycksTest-international_law,hendrycksTest-jurisprudence,hendrycksTest-logical_fallacies,hendrycksTest-machine_learning,hendrycksTest-management,hendrycksTest-marketing,hendrycksTest-medical_genetics,hendrycksTest-miscellaneous,hendrycksTest-moral_disputes,hendrycksTest-moral_scenarios,hendrycksTest-nutrition,hendrycksTest-philosophy,hendrycksTest-prehistory,hendrycksTest-professional_accounting,hendrycksTest-professional_law,hendrycksTest-professional_medicine,hendrycksTest-professional_psychology,hendrycksTest-public_relations,hendrycksTest-security_studies,hendrycksTest-sociology,hendrycksTest-us_foreign_policy,hendrycksTest-virology,hendrycksTest-world_religions (average of all the results acc)
#Winogrande: 5-shot, winogrande (acc)
#GSM8k: 5-shot, gsm8k (acc)

#model="DCFormerSlim"; revision="130000step"
#model="DCFormerSlim"; revision="150000step"
#model="Qwen-7B"; revision=""
#model="Llama-2-7b-hf"; revision=""
#device="cuda:0"
#device="cuda:1"

#task="hellaswag"; shot="10"; metric="acc_norm"
#task="mmlu"; shot="5"; metric="acc"
#task="winogrande"; shot="5"; metric="acc"
#task="gsm8k"; shot="5"; metric="acc"
#task="arc_challenge"; shot="25"; metric="acc_norm"
#task="arc_challenge"; shot="15"; metric="acc_norm"
#task="truthfulqa_mc2"; shot="0"; metric="acc"

#DCFormer
#lm_eval --model hf --model_args pretrained=${model},revision=${revision},dtype=float16 --tasks $task --device $device --batch_size 1 --num_fewshot $shot --output_path results/${model}_${revision}_${task}_${shot}shot_tmp >logs/${model}_${revision}_${task}_${shot}shot_tmp.log 2>&1

# Qwen
#lm_eval --model hf --model_args pretrained=Qwen/${model},dtype=float16,trust_remote_code=true --tasks $task --device $device --batch_size 1 --num_fewshot $shot --output_path results/${model}_${task}_${shot}shot >logs/${model}_${task}_${shot}shot.log 2>&1

# llama2 
#lm_eval --model hf --model_args pretrained=NousResearch/${model},dtype=float16,trust_remote_code=true --tasks $task --device $device --batch_size 1 --num_fewshot $shot --output_path results/${model}_${task}_${shot}shot_custom >logs/${model}_${task}_${shot}shot_custom.log 2>&1


# download ckpt
# /opt/conda/bin/python /home/lishengping/mengqy/scripts/load_paxml_to_torch_ocdbt.py --model_path gs://llm_projects_europe-west4/log/PileMUDDPythia3BPlusOcdbtv6e/checkpoints/checkpoint_00033000/state
# /opt/conda/bin/python /home/lishengping/mengqy/scripts/load_paxml_to_torch_ocdbt.py --model_path gs://llm_projects_europe-west4/log/PileMUDDPythiaXLPlusOcdbtv6e/checkpoints/checkpoint_00033000/state

# /opt/conda/bin/python /home/lishengping/mengqy/scripts/load_paxml_to_torch_ocdbt.py --model_path gs://llm_projects_europe-west4/log/PileMUDDLlama3BPlusOcdbtContv6e/checkpoints/checkpoint_00013000/state

STEP="143000"

DEVICE1="cuda:1"
DEVICE2="cuda:0"

#SHOT="0"
SHOT="5"

#MODEL_NAME="MUDDPythia"
MODEL_NAME="MUDDFormer"

#MODEL_SIZE="1.4B"
MODEL_SIZE="2.8B"

# MUDDPythia
#lm_eval --model hf --model_args pretrained=MUDDPythia-0.4B,revision=step13500,dtype=bfloat16 --tasks arc_challenge --device cuda:0 --num_fewshot 1

#nohup lm_eval --model hf --model_args pretrained=${MODEL_NAME}-${MODEL_SIZE},revision=step${STEP},dtype=bfloat16 --tasks openbookqa,race_middle,race --batch_size 1 --device ${DEVICE1} --num_fewshot ${SHOT} --output_path results/obqa_race_${MODEL_NAME}${MODEL_SIZE}_shot${SHOT}_step${STEP} > logs/obqa_race_${MODEL_NAME}${MODEL_SIZE}_shot${SHOT}_step${STEP}.log 2>&1 & 

#nohup lm_eval --model hf --model_args pretrained=${MODEL_NAME}-${MODEL_SIZE},revision=step${STEP},dtype=bfloat16 --tasks lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --batch_size 1 --device ${DEVICE2} --num_fewshot ${SHOT} --trust_remote_code --output_path results/common_tasks_${MODEL_NAME}${MODEL_SIZE}_shot${SHOT}_step${STEP} > logs/common_tasks_${MODEL_NAME}${MODEL_SIZE}_shot${SHOT}_step${STEP}.log 2>&1 &


#Pythia1.4b
#lm_eval --model hf --model_args pretrained=EleutherAI/pythia-1.4b,dtype=float16 --tasks openbookqa,race_middle,race --device 'cuda:0' --batch_size 1 --num_fewshot 0 --output_path results/Pythia1.4B_obqa_race_0shot > logs/pythia1.4b_obqa_race_0shot.log 2>&1 &

#lm_eval --model hf --model_args pretrained=EleutherAI/pythia-1.4b,dtype=float16 --tasks openbookqa,race_middle,race --device 'cuda:1' --batch_size 1 --num_fewshot 5 --output_path results/Pythia1.4B_obqa_race_5shot > logs/pythia1.4b_obqa_race_5shot.log 2>&1 &

#lm_eval --model hf --model_args pretrained=EleutherAI/pythia-1.4b,dtype=float16 --tasks lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --device 'cuda:1' --batch_size 1 --num_fewshot 0 --output_path results/Pythia1.4B_common_0shot > logs/pythia1.4b_common_0shot.log 2>&1 &

#lm_eval --model hf --model_args pretrained=EleutherAI/pythia-1.4b,dtype=float16 --tasks lambada_openai,piqa,winogrande,wsc,arc_easy,arc_challenge,sciq,logiqa,boolq,hellaswag --device 'cuda:0' --batch_size 1 --num_fewshot 5 --output_path results/Pythia1.4B_common_5shot > logs/pythia1.4b_common_5shot.log 2>&1 &
