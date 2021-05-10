

for (( test=2; test<=12; test++ )); do
	echo "Beginning to Run bc.c on all folds of Test Run"$test
	
	output_folder=Test"$test"

	./all_bc.sh "$output_folder" 2>"$output_folder"/bc_err.txt 1>"$output_folder"/bc_output.txt 

	echo "Done with Testing Run "$test"..."

done