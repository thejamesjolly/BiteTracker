echo "Beginnning ./bc.sh for all files..."

./bc ./../../BiteData/p005/c1/20120201113500388.txt -fold 1 > winbites/winbites_p005_c1.txt
./bc ./../../BiteData/p005/c2/20120201115556861.txt -fold 1 > winbites/winbites_p005_c2.txt
./bc ./../../BiteData/p006/c1/20120201113340476.txt -fold 1 > winbites/winbites_p006_c1.txt

echo "through First Fold of data..."

./bc ./../../BiteData/p068/c2/20120229175105520.txt -fold 2 > winbites/winbites_p068_c2.txt
./bc ./../../BiteData/p069/c1/20120308173059536.txt -fold 2 > winbites/winbites_p069_c1.txt
./bc ./../../BiteData/p069/c2/20120308174319907.txt -fold 2 > winbites/winbites_p069_c2.txt



echo "Through second Fold of Data..."

./bc ./../../BiteData/p132/c1/20120313192418103.txt -fold 3 > winbites/winbites_p132_c1.txt
./bc ./../../BiteData/p132/c2/20120313193633644.txt -fold 3 > winbites/winbites_p132_c2.txt
./bc ./../../BiteData/p133/c1/20120308173005939.txt -fold 3 > winbites/winbites_p133_c1.txt

echo "Through third fold of data..."
./bc ./../../BiteData/p199/c1/20120329133132745.txt -fold 4 > winbites/winbites_p199_c1.txt
./bc ./../../BiteData/p201/c1/20120403112200043.txt -fold 4 > winbites/winbites_p201_c1.txt
./bc ./../../BiteData/p202/c1/20120327173510273.txt -fold 4 > winbites/winbites_p202_c1.txt


echo "Through fourth fold of data..."

./bc ./../../BiteData/p273/c1/20120423132056157.txt -fold 5 > winbites/winbites_p273_c1.txt
./bc ./../../BiteData/p273/c2/20120423133718739.txt -fold 5 > winbites/winbites_p273_c2.txt
./bc ./../../BiteData/p274/c1/20120423112814581.txt -fold 5 > winbites/winbites_p274_c1.txt

echo "Through fifth fold of data..."

echo "Finished with all bite counts."
