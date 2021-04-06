#!/bin/bash
# Basil Lin
# Step counter project
# Script to test window sizes for best RCA/SDA
# Usage: ./window_test.sh [directory] [window_size_start] [window_size_end] [window_increment] [window_stride]
# [directory] is top level dir containing all subject files
# [window_size_start] [window_size_end] are in datum, not seconds!
# creates ALL_ALL_ALL_training_results.csv

echo "Bash version ${BASH_VERSION}"

if [ "$#" -ne 5 ]; then
	echo "Usage: ./window_test.sh [directory] [window_size_start] [window_size_end] [window_increment] [window_stride]"
	exit 1
fi

# remove old data
echo "removing old data..."
rm -r temp_training_data &> /dev/null

# create directory for data
mkdir temp_training_data &> /dev/null
mkdir models &> /dev/null

# compile cutsteps.c
cd ../cut/
make clean &> /dev/null
make &> /dev/null

# create result CSV file
echo "Window size,Gait,Sensor #,Predicted steps,Actual steps,Difference,RCA" > ../window_test/ALL_ALL_ALL_training_results.csv

# loop through iterations of windows
for ((windowsize=$2; windowsize<=$3; windowsize+=$4)); do

	echo ".........................TESTING WINDOW SIZE OF $windowsize........................."
	cd ../window_test/
	rm -r temp_training_data/* &> /dev/null

	# create data
	echo "cutting and normalizing data..."
	cd ../cut/
	./9_cutnorm.sh $1 $windowsize $5 &> /dev/null
	mv *_cut.txt ../window_test/temp_training_data/
	mv *_cutnorm.txt ../window_test/temp_training_data/

	# train models and get result
	echo "training models..."
	cd ../training/

	for ((sensor=1; sensor<=3; sensor++)); do

		echo "training {Regular, Sensor0$sensor}..."

		python3 train_model.py ../window_test/temp_training_data/ALL_Regular_"$sensor"_cutnorm.txt $windowsize $5 ../window_test/models/ALL_Regular_"$sensor"_"$windowsize"_model.h5 > ../window_test/temp_training_data/ALL_Regular_"$sensor"_"$windowsize"_results.txt
		pcregrep -M "Predicted steps:.*\nActual steps:.*\nDifference in steps:.*\nTraining run count accuracy:.*" ../window_test/temp_training_data/ALL_Regular_"$sensor"_"$windowsize"_results.txt | sed 's/^.*: //' > ../window_test/temp_training_data/ALL_Regular_"$sensor"_"$windowsize"_important.txt
		echo -n "$windowsize," >> ../window_test/ALL_ALL_ALL_training_results.csv
		echo -n "Regular," >> ../window_test/ALL_ALL_ALL_training_results.csv
		echo -n "$sensor," >> ../window_test/ALL_ALL_ALL_training_results.csv
		for ((line=1; line<=4; line++)); do
			sed "${line}q;d" ../window_test/temp_training_data/ALL_Regular_"$sensor"_"$windowsize"_important.txt >> ../window_test/ALL_ALL_ALL_training_results.csv
			truncate -s -1 ../window_test/ALL_ALL_ALL_training_results.csv
			echo -n "," >> ../window_test/ALL_ALL_ALL_training_results.csv
		done
		echo "" >> ../window_test/ALL_ALL_ALL_training_results.csv

		echo "training {SemiRegular, Sensor0$sensor}..."

		python3 train_model.py ../window_test/temp_training_data/ALL_SemiRegular_"$sensor"_cutnorm.txt $windowsize $5 ../window_test/models/ALL_SemiRegular_"$sensor"_"$windowsize"_model.h5 > ../window_test/temp_training_data/ALL_SemiRegular_"$sensor"_"$windowsize"_results.txt
		pcregrep -M "Predicted steps:.*\nActual steps:.*\nDifference in steps:.*\nTraining run count accuracy:.*" ../window_test/temp_training_data/ALL_SemiRegular_"$sensor"_"$windowsize"_results.txt | sed 's/^.*: //' > ../window_test/temp_training_data/ALL_SemiRegular_"$sensor"_"$windowsize"_important.txt
		echo -n "$windowsize," >> ../window_test/ALL_ALL_ALL_training_results.csv
		echo -n "SemiRegular," >> ../window_test/ALL_ALL_ALL_training_results.csv
		echo -n "$sensor," >> ../window_test/ALL_ALL_ALL_training_results.csv
		for ((line=1; line<=4; line++)); do
			sed "${line}q;d" ../window_test/temp_training_data/ALL_SemiRegular_"$sensor"_"$windowsize"_important.txt >> ../window_test/ALL_ALL_ALL_training_results.csv
			truncate -s -1 ../window_test/ALL_ALL_ALL_training_results.csv
			echo -n "," >> ../window_test/ALL_ALL_ALL_training_results.csv
		done
		echo "" >> ../window_test/ALL_ALL_ALL_training_results.csv

		echo "training {Irregular, Sensor0$sensor}..."

		python3 train_model.py ../window_test/temp_training_data/ALL_Irregular_"$sensor"_cutnorm.txt $windowsize $5 ../window_test/models/ALL_Irregular_"$sensor"_"$windowsize"_model.h5 > ../window_test/temp_training_data/ALL_Irregular_"$sensor"_"$windowsize"_results.txt
		pcregrep -M "Predicted steps:.*\nActual steps:.*\nDifference in steps:.*\nTraining run count accuracy:.*" ../window_test/temp_training_data/ALL_Irregular_"$sensor"_"$windowsize"_results.txt | sed 's/^.*: //' > ../window_test/temp_training_data/ALL_Irregular_"$sensor"_"$windowsize"_important.txt
		echo -n "$windowsize," >> ../window_test/ALL_ALL_ALL_training_results.csv
		echo -n "Irregular," >> ../window_test/ALL_ALL_ALL_training_results.csv
		echo -n "$sensor," >> ../window_test/ALL_ALL_ALL_training_results.csv
		for ((line=1; line<=4; line++)); do
			sed "${line}q;d" ../window_test/temp_training_data/ALL_Irregular_"$sensor"_"$windowsize"_important.txt >> ../window_test/ALL_ALL_ALL_training_results.csv
			truncate -s -1 ../window_test/ALL_ALL_ALL_training_results.csv
			echo -n "," >> ../window_test/ALL_ALL_ALL_training_results.csv
		done
		echo "" >> ../window_test/ALL_ALL_ALL_training_results.csv

	done

done

# cleanup
echo "cleaning up temporary files..."
cd ../window_test/
rm -r temp_training_data &> /dev/null