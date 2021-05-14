

output_folder=$1 #Folder Name DOES NOT END IN '/'
cut=$2
stride=$3

job_title="Eval_"$output_folder

qsub -v OutputFolder=$output_folder,Cut=$cut,Stride=$stride -N $job_title -o $output_folder/logs/output_eval.txt -e $output_folder/logs/error_eval.txt Model_Eval.pbs



