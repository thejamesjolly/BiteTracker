output_Total_Stats_File=$1
gcc -o evalbites evalbites.c -lm
gcc -o summ summ.c -lm

for (( test=1; test<=12; test++ )); do
	echo "Beginning to Run eval.c on all folds of Test Run"$test
	
	output_folder=Test"$test"

	./all_eval.sh "$output_folder" > "$output_folder"/all_eval_output.txt 

	echo "Done with eval Testing Run "$test"..."

	./summ "$output_folder"/all_eval_output.txt >> $output_Total_Stats_File

done