

output_folder=$1 #Folder Name DOES NOT END IN '/'
cut=$2
stride=$3



mkdir "$output_folder"

mkdir "$output_folder"/models
mkdir "$output_folder"/winbites
mkdir "$output_folder"/logs

###############################

echo "Training..."

for (( fold=1; fold<=5; fold++ )); do
    echo "Qsub-ing command: python train-model.py "$output_folder"/models/Cut"$cut"_Str"$stride"_fold"$fold" "$cut" "$stride" FoldData/DataFiles_fold1.txt > "$output_folder"/Cut"$cut"_Str"$stride"_fold"$fold".txt"
	
	job_title=$output_folder"_"$fold
		
	qsub -v OutputFolder=$output_folder,Cut=$cut,Stride=$stride,Fold=$fold -N $job_title -o $output_folder/logs/output$fold.txt -e $output_folder/logs/error$fold.txt Model_Train.pbs
	
done

################################################



echo "Finished Training Scheduling. Wait for job completions and then Run \"PersevPartB_Eval.sh "$output_folder"\""





