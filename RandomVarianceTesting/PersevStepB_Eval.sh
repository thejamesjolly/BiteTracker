

output_folder=$1 #Folder Name DOES NOT END IN '/'
cut=$2
stride=$3

################################################


echo "Executing bite counter for all files..."

python bc.py ./../../Database/p005/c1/20120201113500388.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p005_c1.txt 
python bc.py ./../../Database/p005/c2/20120201115556861.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p005_c2.txt 
python bc.py ./../../Database/p006/c1/20120201113340476.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p006_c1.txt 
python bc.py ./../../Database/p006/c2/20120201115638873.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p006_c2.txt 
python bc.py ./../../Database/p007/c1/20120202113525295.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p007_c1.txt 
python bc.py ./../../Database/p008/c1/20120202113615465.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p008_c1.txt 
python bc.py ./../../Database/p009/c1/20120203113936089.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p009_c1.txt 
python bc.py ./../../Database/p010/c1/20120203113910466.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p010_c1.txt 
python bc.py ./../../Database/p011/c1/20120203172356676.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p011_c1.txt 
python bc.py ./../../Database/p011/c2/20120203173621470.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p011_c2.txt 
python bc.py ./../../Database/p012/c1/20120203172506843.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p012_c1.txt 
python bc.py ./../../Database/p012/c2/20120203173709955.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p012_c2.txt 
python bc.py ./../../Database/p013/c1/20120216172953272.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p013_c1.txt 
python bc.py ./../../Database/p014/c1/20120224112851009.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p014_c1.txt 
python bc.py ./../../Database/p015/c1/20120216172952107.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p015_c1.txt 
python bc.py ./../../Database/p016/c1/20120224113538574.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p016_c1.txt 
python bc.py ./../../Database/p016/c2/20120224120131069.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p016_c2.txt 
python bc.py ./../../Database/p017/c1/20120216112726560.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p017_c1.txt 
python bc.py ./../../Database/p017/c2/20120216114901197.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p017_c2.txt 
python bc.py ./../../Database/p018/c1/20120425132756593.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p018_c1.txt 
python bc.py ./../../Database/p018/c2/20120425134340262.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p018_c2.txt 
python bc.py ./../../Database/p019/c1/20120216172954812.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p019_c1.txt 
python bc.py ./../../Database/p019/c2/20120216174956985.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p019_c2.txt 
python bc.py ./../../Database/p020/c1/20120217133348891.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p020_c1.txt 
python bc.py ./../../Database/p021/c1/20120229112544353.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p021_c1.txt 
python bc.py ./../../Database/p021/c2/20120229113844623.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p021_c2.txt 
python bc.py ./../../Database/p022/c1/20120229112954577.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p022_c1.txt 
python bc.py ./../../Database/p023/c1/20120216112438514.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p023_c1.txt 
python bc.py ./../../Database/p024/c1/20120328193110730.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p024_c1.txt 
python bc.py ./../../Database/p024/c2/20120328195721547.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p024_c2.txt 
python bc.py ./../../Database/p025/c1/20120222113110209.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p025_c1.txt 
python bc.py ./../../Database/p026/c1/20120228173848606.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p026_c1.txt 
python bc.py ./../../Database/p026/c2/20120228180550970.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p026_c2.txt 
python bc.py ./../../Database/p026/c3/20120228182216423.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p026_c3.txt 
python bc.py ./../../Database/p027/c1/20120220173452041.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p027_c1.txt 
python bc.py ./../../Database/p027/c2/20120220174516207.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p027_c2.txt 
python bc.py ./../../Database/p027/c3/20120220175903758.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p027_c3.txt 
python bc.py ./../../Database/p028/c1/20120220173438949.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p028_c1.txt 
python bc.py ./../../Database/p028/c2/20120220174622771.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p028_c2.txt 
python bc.py ./../../Database/p029/c1/20120217133350683.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p029_c1.txt 
python bc.py ./../../Database/p030/c1/20120217133551702.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p030_c1.txt 
python bc.py ./../../Database/p031/c1/20120216112730946.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p031_c1.txt 
python bc.py ./../../Database/p033/c1/20120217133617613.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p033_c1.txt 
python bc.py ./../../Database/p034/c1/20120216172955780.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p034_c1.txt 
python bc.py ./../../Database/p034/c2/20120216174456204.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p034_c2.txt 
python bc.py ./../../Database/p034/c3/20120216175456527.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p034_c3.txt 
python bc.py ./../../Database/p035/c1/20120306173256295.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p035_c1.txt 
python bc.py ./../../Database/p035/c2/20120306175649237.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p035_c2.txt 
python bc.py ./../../Database/p036/c1/20120228173931210.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p036_c1.txt 
python bc.py ./../../Database/p036/c2/20120228175944210.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p036_c2.txt 
python bc.py ./../../Database/p037/c1/20120229193027444.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p037_c1.txt 
python bc.py ./../../Database/p037/c2/20120229195222164.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p037_c2.txt 
python bc.py ./../../Database/p038/c1/20120229192826289.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p038_c1.txt 
python bc.py ./../../Database/p039/c1/20120305192859412.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p039_c1.txt 
python bc.py ./../../Database/p040/c1/20120228112659238.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p040_c1.txt 
python bc.py ./../../Database/p042/c1/20120307132620724.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p042_c1.txt 
python bc.py ./../../Database/p042/c2/20120307134735203.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p042_c2.txt 
python bc.py ./../../Database/p043/c1/20120223173131340.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p043_c1.txt 
python bc.py ./../../Database/p044/c1/20120301113052494.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p044_c1.txt 
python bc.py ./../../Database/p045/c1/20120309113007692.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p045_c1.txt 
python bc.py ./../../Database/p045/c2/20120309114930233.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p045_c2.txt 
python bc.py ./../../Database/p045/c3/20120309120424106.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p045_c3.txt 
python bc.py ./../../Database/p046/c1/20120222112903973.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p046_c1.txt 
python bc.py ./../../Database/p047/c1/20120229193514925.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p047_c1.txt 
python bc.py ./../../Database/p047/c2/20120229194923067.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p047_c2.txt 
python bc.py ./../../Database/p048/c1/20120223173312302.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p048_c1.txt 
python bc.py ./../../Database/p050/c1/20120228173840380.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p050_c1.txt 
python bc.py ./../../Database/p051/c1/20120312133047898.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p051_c1.txt 
python bc.py ./../../Database/p051/c2/20120312135400686.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p051_c2.txt 
python bc.py ./../../Database/p052/c1/20120305132652223.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p052_c1.txt 
python bc.py ./../../Database/p052/c2/20120305134427377.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p052_c2.txt 
python bc.py ./../../Database/p053/c1/20120222112849751.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p053_c1.txt 
python bc.py ./../../Database/p054/c1/20120223173032964.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p054_c1.txt 
python bc.py ./../../Database/p054/c2/20120223175008619.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p054_c2.txt 
python bc.py ./../../Database/p055/c1/20120223173113383.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p055_c1.txt 
python bc.py ./../../Database/p055/c2/20120223175116604.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p055_c2.txt 
python bc.py ./../../Database/p056/c1/20120220173416337.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p056_c1.txt 
python bc.py ./../../Database/p056/c2/20120220175219011.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p056_c2.txt 
python bc.py ./../../Database/p057/c1/20120228173854320.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p057_c1.txt 
python bc.py ./../../Database/p057/c2/20120228180429696.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p057_c2.txt 
python bc.py ./../../Database/p057/c3/20120228182142096.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p057_c3.txt 
python bc.py ./../../Database/p058/c1/20120307114016953.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p058_c1.txt 
python bc.py ./../../Database/p059/c1/20120222113118566.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p059_c1.txt 
python bc.py ./../../Database/p060/c1/20120308173058728.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p060_c1.txt 
python bc.py ./../../Database/p060/c2/20120308175445068.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p060_c2.txt 
python bc.py ./../../Database/p060/c3/20120308180957127.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p060_c3.txt 
python bc.py ./../../Database/p061/c1/20120229132508906.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p061_c1.txt 
python bc.py ./../../Database/p061/c2/20120229134017621.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p061_c2.txt 
python bc.py ./../../Database/p061/c3/20120229135231586.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p061_c3.txt 
python bc.py ./../../Database/p062/c1/20120228192849804.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p062_c1.txt 
python bc.py ./../../Database/p062/c2/20120228194428966.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p062_c2.txt 
python bc.py ./../../Database/p064/c1/20120427112555274.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p064_c1.txt 
python bc.py ./../../Database/p064/c2/20120427114455752.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p064_c2.txt 
python bc.py ./../../Database/p065/c1/20120301132559482.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p065_c1.txt 
python bc.py ./../../Database/p065/c2/20120301134453930.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p065_c2.txt 
python bc.py ./../../Database/p066/c1/20120307193503255.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p066_c1.txt 
python bc.py ./../../Database/p066/c2/20120307195309898.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p066_c2.txt 
python bc.py ./../../Database/p066/c3/20120307200547395.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p066_c3.txt 
python bc.py ./../../Database/p067/c1/20120307193322526.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p067_c1.txt 
python bc.py ./../../Database/p067/c2/20120307195313133.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p067_c2.txt 
python bc.py ./../../Database/p068/c1/20120229173159520.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p068_c1.txt 
python bc.py ./../../Database/p068/c2/20120229175105520.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p068_c2.txt 
python bc.py ./../../Database/p069/c1/20120308173059536.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p069_c1.txt 
python bc.py ./../../Database/p069/c2/20120308174319907.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold1.h5 > "$output_folder"/winbites/winbites_p069_c2.txt
echo "through First Fold of data..."

python bc.py ./../../Database/p069/c3/20120308175742231.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p069_c3.txt 
python bc.py ./../../Database/p069/c4/20120308181130785.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p069_c4.txt 
python bc.py ./../../Database/p070/c1/20120308173013941.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p070_c1.txt 
python bc.py ./../../Database/p070/c2/20120308174600690.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p070_c2.txt 
python bc.py ./../../Database/p070/c3/20120308175752760.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p070_c3.txt 
python bc.py ./../../Database/p071/c1/20120229173212520.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p071_c1.txt 
python bc.py ./../../Database/p071/c2/20120229175025520.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p071_c2.txt 
python bc.py ./../../Database/p072/c1/20120229173253165.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p072_c1.txt 
python bc.py ./../../Database/p074/c1/20120307193427802.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p074_c1.txt 
python bc.py ./../../Database/p074/c2/20120307195714814.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p074_c2.txt 
python bc.py ./../../Database/p075/c1/20120302113119778.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p075_c1.txt 
python bc.py ./../../Database/p077/c1/20120307192942492.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p077_c1.txt 
python bc.py ./../../Database/p077/c2/20120307194821244.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p077_c2.txt 
python bc.py ./../../Database/p077/c3/20120307200304535.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p077_c3.txt 
python bc.py ./../../Database/p078/c1/20120228192946874.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p078_c1.txt 
python bc.py ./../../Database/p078/c2/20120228195038630.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p078_c2.txt 
python bc.py ./../../Database/p079/c1/20120229133150595.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p079_c1.txt 
python bc.py ./../../Database/p079/c2/20120229134617055.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p079_c2.txt 
python bc.py ./../../Database/p080/c1/20120229132958919.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p080_c1.txt 
python bc.py ./../../Database/p080/c2/20120229135139140.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p080_c2.txt 
python bc.py ./../../Database/p081/c1/20120302113751927.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p081_c1.txt 
python bc.py ./../../Database/p082/c1/20120228192901972.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p082_c1.txt 
python bc.py ./../../Database/p082/c2/20120228194225241.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p082_c2.txt 
python bc.py ./../../Database/p083/c1/20120229132844811.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p083_c1.txt 
python bc.py ./../../Database/p083/c2/20120229135015685.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p083_c2.txt 
python bc.py ./../../Database/p084/c1/20120305192105796.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p084_c1.txt 
python bc.py ./../../Database/p084/c2/20120305193334537.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p084_c2.txt 
python bc.py ./../../Database/p085/c1/20120305172115028.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p085_c1.txt 
python bc.py ./../../Database/p086/c1/20120228193646075.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p086_c1.txt 
python bc.py ./../../Database/p087/c1/20120309113349919.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p087_c1.txt 
python bc.py ./../../Database/p087/c2/20120309114401725.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p087_c2.txt 
python bc.py ./../../Database/p088/c1/20120305112416771.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p088_c1.txt 
python bc.py ./../../Database/p088/c2/20120305114328731.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p088_c2.txt 
python bc.py ./../../Database/p089/c1/20120229113001352.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p089_c1.txt 
python bc.py ./../../Database/p090/c1/20120306172744676.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p090_c1.txt 
python bc.py ./../../Database/p090/c2/20120306175105028.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p090_c2.txt 
python bc.py ./../../Database/p091/c1/20120309113140317.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p091_c1.txt 
python bc.py ./../../Database/p092/c1/20120305172343046.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p092_c1.txt 
python bc.py ./../../Database/p093/c1/20120305132548824.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p093_c1.txt 
python bc.py ./../../Database/p093/c2/20120305134113459.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p093_c2.txt 
python bc.py ./../../Database/p095/c1/20120313112930016.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p095_c1.txt 
python bc.py ./../../Database/p096/c1/20120228112632956.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p096_c1.txt 
python bc.py ./../../Database/p098/c1/20120228112415658.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p098_c1.txt 
python bc.py ./../../Database/p098/c2/20120228115029341.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p098_c2.txt 
python bc.py ./../../Database/p099/c1/20120330173521593.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p099_c1.txt 
python bc.py ./../../Database/p099/c2/20120330180137160.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p099_c2.txt 
python bc.py ./../../Database/p100/c1/20120328193205663.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p100_c1.txt 
python bc.py ./../../Database/p101/c1/20120309134613335.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p101_c1.txt 
python bc.py ./../../Database/p101/c2/20120309140953594.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p101_c2.txt 
python bc.py ./../../Database/p102/c1/20120309134618339.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p102_c1.txt 
python bc.py ./../../Database/p102/c2/20120309141101370.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p102_c2.txt 
python bc.py ./../../Database/p103/c1/20120301132547476.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p103_c1.txt 
python bc.py ./../../Database/p103/c2/20120301134238548.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p103_c2.txt 
python bc.py ./../../Database/p104/c1/20120305192707780.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p104_c1.txt 
python bc.py ./../../Database/p105/c1/20120301113600105.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p105_c1.txt 
python bc.py ./../../Database/p106/c1/20120301113532302.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p106_c1.txt 
python bc.py ./../../Database/p107/c1/20120402113141338.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p107_c1.txt 
python bc.py ./../../Database/p107/c2/20120402115016952.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p107_c2.txt 
python bc.py ./../../Database/p108/c1/20120305112836929.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p108_c1.txt 
python bc.py ./../../Database/p108/c2/20120305114852010.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p108_c2.txt 
python bc.py ./../../Database/p109/c1/20120309113304798.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p109_c1.txt 
python bc.py ./../../Database/p109/c2/20120309115424984.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p109_c2.txt 
python bc.py ./../../Database/p110/c1/20120326113246948.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p110_c1.txt 
python bc.py ./../../Database/p111/c1/20120313191823858.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p111_c1.txt 
python bc.py ./../../Database/p111/c2/20120313193321903.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p111_c2.txt 
python bc.py ./../../Database/p111/c3/20120313194638270.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p111_c3.txt 
python bc.py ./../../Database/p113/c1/20120305132612374.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p113_c1.txt 
python bc.py ./../../Database/p113/c2/20120305134259765.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p113_c2.txt 
python bc.py ./../../Database/p114/c1/20120305133008310.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p114_c1.txt 
python bc.py ./../../Database/p114/c2/20120305134348448.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p114_c2.txt 
python bc.py ./../../Database/p115/c1/20120314192820531.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p115_c1.txt 
python bc.py ./../../Database/p115/c2/20120314194028619.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p115_c2.txt 
python bc.py ./../../Database/p115/c3/20120314195217772.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p115_c3.txt 
python bc.py ./../../Database/p116/c1/20120314193158991.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p116_c1.txt 
python bc.py ./../../Database/p116/c2/20120314195110260.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p116_c2.txt 
python bc.py ./../../Database/p116/c3/20120314200033728.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p116_c3.txt 
python bc.py ./../../Database/p117/c1/20120314193456934.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p117_c1.txt 
python bc.py ./../../Database/p117/c2/20120314194708288.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p117_c2.txt 
python bc.py ./../../Database/p117/c3/20120314195744933.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p117_c3.txt 
python bc.py ./../../Database/p117/c4/20120314200530157.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p117_c4.txt 
python bc.py ./../../Database/p118/c1/20120403173343818.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p118_c1.txt 
python bc.py ./../../Database/p118/c2/20120403175241609.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p118_c2.txt 
python bc.py ./../../Database/p119/c1/20120306173048262.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p119_c1.txt 
python bc.py ./../../Database/p119/c2/20120306175109152.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p119_c2.txt 
python bc.py ./../../Database/p120/c1/20120403173344479.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p120_c1.txt 
python bc.py ./../../Database/p120/c2/20120403174722966.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p120_c2.txt 
python bc.py ./../../Database/p121/c1/20120316133630260.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p121_c1.txt 
python bc.py ./../../Database/p121/c2/20120316140923015.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p121_c2.txt 
python bc.py ./../../Database/p122/c1/20120301132928488.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p122_c1.txt 
python bc.py ./../../Database/p122/c2/20120301135344973.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p122_c2.txt 
python bc.py ./../../Database/p123/c1/20120305192217376.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p123_c1.txt 
python bc.py ./../../Database/p123/c2/20120305193623820.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p123_c2.txt 
python bc.py ./../../Database/p125/c1/20120301132607990.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p125_c1.txt 
python bc.py ./../../Database/p125/c2/20120301134825014.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p125_c2.txt 
python bc.py ./../../Database/p129/c1/20120313192119234.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p129_c1.txt 
python bc.py ./../../Database/p129/c2/20120313193650464.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p129_c2.txt 
python bc.py ./../../Database/p130/c1/20120307113650201.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p130_c1.txt 
python bc.py ./../../Database/p131/c1/20120307113501070.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p131_c1.txt 
python bc.py ./../../Database/p132/c1/20120313192418103.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p132_c1.txt 
python bc.py ./../../Database/p132/c2/20120313193633644.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p132_c2.txt 
python bc.py ./../../Database/p133/c1/20120308173005939.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p133_c1.txt 
python bc.py ./../../Database/p134/c1/20120315172811538.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p134_c1.txt 
python bc.py ./../../Database/p134/c2/20120315173934506.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p134_c2.txt 
python bc.py ./../../Database/p134/c3/20120315175511405.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold2.h5 > "$output_folder"/winbites/winbites_p134_c3.txt 

echo "Through second Fold of Data..."

python bc.py ./../../Database/p136/c1/20120305112902897.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p136_c1.txt 
python bc.py ./../../Database/p137/c1/20120313191934294.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p137_c1.txt 
python bc.py ./../../Database/p137/c2/20120313193724203.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p137_c2.txt 
python bc.py ./../../Database/p138/c1/20120315113039876.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p138_c1.txt 
python bc.py ./../../Database/p139/c1/20120307173957461.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p139_c1.txt 
python bc.py ./../../Database/p140/c1/20120307173958843.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p140_c1.txt 
python bc.py ./../../Database/p142/c1/20120313112336564.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p142_c1.txt 
python bc.py ./../../Database/p142/c2/20120313113341665.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p142_c2.txt 
python bc.py ./../../Database/p143/c1/20120330173130674.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p143_c1.txt 
python bc.py ./../../Database/p143/c2/20120330175022551.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p143_c2.txt 
python bc.py ./../../Database/p144/c1/20120402113333595.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p144_c1.txt 
python bc.py ./../../Database/p144/c2/20120402115726456.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p144_c2.txt 
python bc.py ./../../Database/p145/c1/20120402113048929.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p145_c1.txt 
python bc.py ./../../Database/p146/c1/20120312192053882.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p146_c1.txt 
python bc.py ./../../Database/p146/c2/20120312193951835.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p146_c2.txt 
python bc.py ./../../Database/p146/c3/20120312194626539.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p146_c3.txt 
python bc.py ./../../Database/p148/c1/20120307132429449.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p148_c1.txt 
python bc.py ./../../Database/p148/c2/20120307134506379.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p148_c2.txt 
python bc.py ./../../Database/p150/c1/20120307132456101.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p150_c1.txt 
python bc.py ./../../Database/p150/c2/20120307134458360.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p150_c2.txt 
python bc.py ./../../Database/p151/c1/20120307132231281.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p151_c1.txt 
python bc.py ./../../Database/p151/c2/20120307134148964.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p151_c2.txt 
python bc.py ./../../Database/p153/c1/20120312113353867.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p153_c1.txt 
python bc.py ./../../Database/p154/c1/20120312113403956.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p154_c1.txt 
python bc.py ./../../Database/p157/c1/20120308112819443.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p157_c1.txt 
python bc.py ./../../Database/p157/c2/20120308115030731.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p157_c2.txt 
python bc.py ./../../Database/p158/c1/20120308112749664.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p158_c1.txt 
python bc.py ./../../Database/p158/c2/20120308115221156.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p158_c2.txt 
python bc.py ./../../Database/p159/c1/20120308113647725.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p159_c1.txt 
python bc.py ./../../Database/p160/c1/20120315112950061.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p160_c1.txt 
python bc.py ./../../Database/p160/c2/20120315114616600.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p160_c2.txt 
python bc.py ./../../Database/p161/c1/20120312132904377.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p161_c1.txt 
python bc.py ./../../Database/p161/c2/20120312140249951.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p161_c2.txt 
python bc.py ./../../Database/p162/c1/20120330133224229.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p162_c1.txt 
python bc.py ./../../Database/p164/c1/20120307173626037.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p164_c1.txt 
python bc.py ./../../Database/p165/c1/20120316133349066.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p165_c1.txt 
python bc.py ./../../Database/p165/c2/20120316140241245.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p165_c2.txt 
python bc.py ./../../Database/p166/c1/20120312113236284.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p166_c1.txt 
python bc.py ./../../Database/p166/c2/20120312115117158.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p166_c2.txt 
python bc.py ./../../Database/p169/c1/20120315133118291.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p169_c1.txt 
python bc.py ./../../Database/p169/c2/20120315134442935.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p169_c2.txt 
python bc.py ./../../Database/p170/c1/20120409133324028.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p170_c1.txt 
python bc.py ./../../Database/p171/c1/20120308113713521.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p171_c1.txt 
python bc.py ./../../Database/p171/c2/20120308121134470.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p171_c2.txt 
python bc.py ./../../Database/p172/c1/20120312113103653.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p172_c1.txt 
python bc.py ./../../Database/p172/c2/20120312115044471.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p172_c2.txt 
python bc.py ./../../Database/p173/c1/20120315133256708.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p173_c1.txt 
python bc.py ./../../Database/p173/c2/20120315135235408.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p173_c2.txt 
python bc.py ./../../Database/p174/c1/20120312132757848.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p174_c1.txt 
python bc.py ./../../Database/p174/c2/20120312134342108.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p174_c2.txt 
python bc.py ./../../Database/p174/c3/20120312135717947.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p174_c3.txt 
python bc.py ./../../Database/p175/c1/20120315172613113.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p175_c1.txt 
python bc.py ./../../Database/p175/c2/20120315173837577.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p175_c2.txt 
python bc.py ./../../Database/p175/c3/20120315175359529.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p175_c3.txt 
python bc.py ./../../Database/p176/c1/20120328132824062.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p176_c1.txt 
python bc.py ./../../Database/p176/c2/20120328134922106.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p176_c2.txt 
python bc.py ./../../Database/p177/c1/20120316133238284.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p177_c1.txt 
python bc.py ./../../Database/p177/c2/20120316134931699.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p177_c2.txt 
python bc.py ./../../Database/p178/c1/20120315132817101.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p178_c1.txt 
python bc.py ./../../Database/p178/c2/20120315134731448.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p178_c2.txt 
python bc.py ./../../Database/p179/c1/20120315193244966.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p179_c1.txt 
python bc.py ./../../Database/p179/c2/20120315195434744.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p179_c2.txt 
python bc.py ./../../Database/p179/c3/20120315201150952.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p179_c3.txt 
python bc.py ./../../Database/p180/c1/20120409133512987.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p180_c1.txt 
python bc.py ./../../Database/p180/c2/20120409135602563.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p180_c2.txt 
python bc.py ./../../Database/p180/c3/20120409140511815.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p180_c3.txt 
python bc.py ./../../Database/p181/c1/20120327132811002.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p181_c1.txt 
python bc.py ./../../Database/p181/c2/20120327134547579.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p181_c2.txt 
python bc.py ./../../Database/p181/c3/20120327135711632.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p181_c3.txt 
python bc.py ./../../Database/p182/c1/20120330132957083.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p182_c1.txt 
python bc.py ./../../Database/p182/c2/20120330134356469.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p182_c2.txt 
python bc.py ./../../Database/p184/c1/20120327132757916.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p184_c1.txt 
python bc.py ./../../Database/p184/c2/20120327135750694.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p184_c2.txt 
python bc.py ./../../Database/p185/c1/20120326132538885.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p185_c1.txt 
python bc.py ./../../Database/p185/c2/20120326134219425.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p185_c2.txt 
python bc.py ./../../Database/p186/c1/20120326132426970.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p186_c1.txt 
python bc.py ./../../Database/p186/c2/20120326134149710.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p186_c2.txt 
python bc.py ./../../Database/p187/c1/20120315193241484.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p187_c1.txt 
python bc.py ./../../Database/p187/c2/20120315195431777.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p187_c2.txt 
python bc.py ./../../Database/p187/c3/20120315201150919.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p187_c3.txt 
python bc.py ./../../Database/p188/c1/20120330133005854.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p188_c1.txt 
python bc.py ./../../Database/p188/c2/20120330134457689.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p188_c2.txt 
python bc.py ./../../Database/p189/c1/20120406132401423.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p189_c1.txt 
python bc.py ./../../Database/p190/c1/20120326113122974.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p190_c1.txt 
python bc.py ./../../Database/p190/c2/20120326114821013.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p190_c2.txt 
python bc.py ./../../Database/p192/c1/20120406112224390.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p192_c1.txt 
python bc.py ./../../Database/p192/c2/20120406114210862.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p192_c2.txt 
python bc.py ./../../Database/p194/c1/20120425193144311.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p194_c1.txt 
python bc.py ./../../Database/p194/c2/20120425195011259.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p194_c2.txt 
python bc.py ./../../Database/p194/c3/20120425200629560.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p194_c3.txt 
python bc.py ./../../Database/p195/c1/20120330133220787.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p195_c1.txt 
python bc.py ./../../Database/p195/c2/20120330135450621.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p195_c2.txt 
python bc.py ./../../Database/p195/c3/20120330140922388.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p195_c3.txt 
python bc.py ./../../Database/p198/c1/20120329133131746.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p198_c1.txt 
python bc.py ./../../Database/p199/c1/20120329133132745.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p199_c1.txt 
python bc.py ./../../Database/p201/c1/20120403112200043.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p201_c1.txt 
python bc.py ./../../Database/p202/c1/20120327173510273.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p202_c1.txt 
python bc.py ./../../Database/p204/c1/20120330173023080.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p204_c1.txt 
python bc.py ./../../Database/p204/c2/20120330174152512.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p204_c2.txt 
python bc.py ./../../Database/p204/c3/20120330175840815.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p204_c3.txt 
python bc.py ./../../Database/p205/c1/20120326133018088.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p205_c1.txt 
python bc.py ./../../Database/p205/c2/20120326134754917.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p205_c2.txt 
python bc.py ./../../Database/p206/c1/20120403112517787.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p206_c1.txt 
python bc.py ./../../Database/p207/c1/20120327132744923.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold3.h5 > "$output_folder"/winbites/winbites_p207_c1.txt 

echo "Through third fold of data..."

python bc.py ./../../Database/p207/c2/20120327134145172.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p207_c2.txt 
python bc.py ./../../Database/p207/c3/20120327135553961.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p207_c3.txt 
python bc.py ./../../Database/p208/c1/20120326132849580.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p208_c1.txt 
python bc.py ./../../Database/p208/c2/20120326134631943.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p208_c2.txt 
python bc.py ./../../Database/p209/c1/20120425192934334.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p209_c1.txt 
python bc.py ./../../Database/p209/c2/20120425194727754.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p209_c2.txt 
python bc.py ./../../Database/p215/c1/20120330173036560.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p215_c1.txt 
python bc.py ./../../Database/p215/c2/20120330174145417.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p215_c2.txt 
python bc.py ./../../Database/p215/c3/20120330175912578.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p215_c3.txt 
python bc.py ./../../Database/p217/c1/20120330112653356.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p217_c1.txt 
python bc.py ./../../Database/p217/c2/20120330114201483.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p217_c2.txt 
python bc.py ./../../Database/p217/c3/20120330115504329.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p217_c3.txt 
python bc.py ./../../Database/p218/c1/20120330112416435.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p218_c1.txt 
python bc.py ./../../Database/p218/c2/20120330113237522.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p218_c2.txt 
python bc.py ./../../Database/p218/c3/20120330114442646.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p218_c3.txt 
python bc.py ./../../Database/p218/c4/20120330115500214.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p218_c4.txt 
python bc.py ./../../Database/p219/c1/20120330112638052.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p219_c1.txt 
python bc.py ./../../Database/p219/c2/20120330115022285.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p219_c2.txt 
python bc.py ./../../Database/p220/c1/20120327173631369.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p220_c1.txt 
python bc.py ./../../Database/p220/c2/20120327180308867.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p220_c2.txt 
python bc.py ./../../Database/p221/c1/20120328133121287.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p221_c1.txt 
python bc.py ./../../Database/p224/c1/20120329113826684.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p224_c1.txt 
python bc.py ./../../Database/p226/c1/20120412114018563.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p226_c1.txt 
python bc.py ./../../Database/p226/c2/20120412120623413.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p226_c2.txt 
python bc.py ./../../Database/p229/c1/20120402133125326.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p229_c1.txt 
python bc.py ./../../Database/p229/c2/20120402135435379.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p229_c2.txt 
python bc.py ./../../Database/p230/c1/20120409113857338.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p230_c1.txt 
python bc.py ./../../Database/p230/c2/20120409115642333.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p230_c2.txt 
python bc.py ./../../Database/p231/c1/20120403173445778.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p231_c1.txt 
python bc.py ./../../Database/p231/c2/20120403180305296.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p231_c2.txt 
python bc.py ./../../Database/p232/c1/20120327113301254.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p232_c1.txt 
python bc.py ./../../Database/p233/c1/20120329113802763.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p233_c1.txt 
python bc.py ./../../Database/p234/c1/20120425173135343.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p234_c1.txt 
python bc.py ./../../Database/p234/c2/20120425174950426.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p234_c2.txt 
python bc.py ./../../Database/p235/c1/20120329113104332.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p235_c1.txt 
python bc.py ./../../Database/p236/c1/20120425132947976.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p236_c1.txt 
python bc.py ./../../Database/p236/c2/20120425134526411.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p236_c2.txt 
python bc.py ./../../Database/p237/c1/20120419132734051.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p237_c1.txt 
python bc.py ./../../Database/p237/c2/20120419133904252.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p237_c2.txt 
python bc.py ./../../Database/p241/c1/20120327173046460.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p241_c1.txt 
python bc.py ./../../Database/p241/c2/20120327175415645.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p241_c2.txt 
python bc.py ./../../Database/p242/c1/20120327113242993.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p242_c1.txt 
python bc.py ./../../Database/p242/c2/20120327115505363.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p242_c2.txt 
python bc.py ./../../Database/p244/c1/20120327113225448.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p244_c1.txt 
python bc.py ./../../Database/p244/c2/20120327115753379.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p244_c2.txt 
python bc.py ./../../Database/p245/c1/20120329113707460.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p245_c1.txt 
python bc.py ./../../Database/p246/c1/20120423112847099.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p246_c1.txt 
python bc.py ./../../Database/p247/c1/20120406112345735.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p247_c1.txt 
python bc.py ./../../Database/p247/c2/20120406114042132.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p247_c2.txt 
python bc.py ./../../Database/p248/c1/20120406112305838.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p248_c1.txt 
python bc.py ./../../Database/p251/c1/20120416172059459.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p251_c1.txt 
python bc.py ./../../Database/p251/c2/20120416174250118.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p251_c2.txt 
python bc.py ./../../Database/p252/c1/20120327173016262.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p252_c1.txt 
python bc.py ./../../Database/p252/c2/20120327175907357.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p252_c2.txt 
python bc.py ./../../Database/p253/c1/20120416172014446.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p253_c1.txt 
python bc.py ./../../Database/p253/c2/20120416174231335.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p253_c2.txt 
python bc.py ./../../Database/p256/c1/20120412133413440.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p256_c1.txt 
python bc.py ./../../Database/p257/c1/20120409113859246.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p257_c1.txt 
python bc.py ./../../Database/p257/c2/20120409120734458.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p257_c2.txt 
python bc.py ./../../Database/p259/c1/20120409193045863.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p259_c1.txt 
python bc.py ./../../Database/p260/c1/20120402113122528.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p260_c1.txt 
python bc.py ./../../Database/p260/c2/20120402114924525.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p260_c2.txt 
python bc.py ./../../Database/p262/c1/20120501132014124.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p262_c1.txt 
python bc.py ./../../Database/p262/c2/20120501133216188.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p262_c2.txt 
python bc.py ./../../Database/p262/c3/20120501135026981.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p262_c3.txt 
python bc.py ./../../Database/p263/c1/20120402133324151.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p263_c1.txt 
python bc.py ./../../Database/p263/c2/20120402135023742.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p263_c2.txt 
python bc.py ./../../Database/p264/c1/20120328132640092.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p264_c1.txt 
python bc.py ./../../Database/p264/c2/20120328135219336.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p264_c2.txt 
python bc.py ./../../Database/p265/c1/20120403192717110.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p265_c1.txt 
python bc.py ./../../Database/p265/c2/20120403194229038.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p265_c2.txt 
python bc.py ./../../Database/p266/c1/20120412113953790.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p266_c1.txt 
python bc.py ./../../Database/p266/c2/20120412120720002.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p266_c2.txt 
python bc.py ./../../Database/p267/c1/20120412114144534.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p267_c1.txt 
python bc.py ./../../Database/p267/c2/20120412120954656.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p267_c2.txt 
python bc.py ./../../Database/p268/c1/20120402133253810.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p268_c1.txt 
python bc.py ./../../Database/p268/c2/20120402135003644.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p268_c2.txt 
python bc.py ./../../Database/p269/c1/20120402133028432.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p269_c1.txt 
python bc.py ./../../Database/p269/c2/20120402135235785.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p269_c2.txt 
python bc.py ./../../Database/p270/c1/20120409133008582.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p270_c1.txt 
python bc.py ./../../Database/p270/c2/20120409134158367.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p270_c2.txt 
python bc.py ./../../Database/p270/c3/20120409135157836.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p270_c3.txt 
python bc.py ./../../Database/p270/c4/20120409140238268.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p270_c4.txt 
python bc.py ./../../Database/p270/c5/20120409141419883.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p270_c5.txt 
python bc.py ./../../Database/p271/c1/20120501132128665.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p271_c1.txt 
python bc.py ./../../Database/p271/c2/20120501133346281.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p271_c2.txt 
python bc.py ./../../Database/p271/c3/20120501134724169.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p271_c3.txt 
python bc.py ./../../Database/p272/c1/20120425172927983.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p272_c1.txt 
python bc.py ./../../Database/p272/c2/20120425174549782.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p272_c2.txt 
python bc.py ./../../Database/p272/c3/20120425175813192.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p272_c3.txt 
python bc.py ./../../Database/p273/c1/20120423132056157.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p273_c1.txt 
python bc.py ./../../Database/p273/c2/20120423133718739.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p273_c2.txt 
python bc.py ./../../Database/p274/c1/20120423112814581.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p274_c1.txt 
python bc.py ./../../Database/p274/c2/20120423114711625.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p274_c2.txt 
python bc.py ./../../Database/p275/c1/20120424172007546.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p275_c1.txt 
python bc.py ./../../Database/p275/c2/20120424173919258.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p275_c2.txt 
python bc.py ./../../Database/p276/c1/20120501132353246.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p276_c1.txt 
python bc.py ./../../Database/p276/c2/20120501134659707.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p276_c2.txt 
python bc.py ./../../Database/p277/c1/20120425132757634.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p277_c1.txt 
python bc.py ./../../Database/p277/c2/20120425134257641.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p277_c2.txt 
python bc.py ./../../Database/p277/c3/20120425135124224.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p277_c3.txt 
python bc.py ./../../Database/p278/c1/20120409173913352.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p278_c1.txt 
python bc.py ./../../Database/p278/c2/20120409175734496.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p278_c2.txt 
python bc.py ./../../Database/p278/c3/20120409182446030.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold4.h5 > "$output_folder"/winbites/winbites_p278_c3.txt 

echo "Through fourth fold of data..."

python bc.py ./../../Database/p279/c1/20120419132417345.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p279_c1.txt 
python bc.py ./../../Database/p279/c2/20120419134413682.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p279_c2.txt 
python bc.py ./../../Database/p279/c3/20120419140148238.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p279_c3.txt 
python bc.py ./../../Database/p280/c1/20120501133044828.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p280_c1.txt 
python bc.py ./../../Database/p280/c2/20120501134957261.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p280_c2.txt 
python bc.py ./../../Database/p281/c1/20120503173112146.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p281_c1.txt 
python bc.py ./../../Database/p281/c2/20120503174552478.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p281_c2.txt 
python bc.py ./../../Database/p281/c3/20120503180551853.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p281_c3.txt 
python bc.py ./../../Database/p282/c1/20120501113549022.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p282_c1.txt 
python bc.py ./../../Database/p283/c1/20120501113224745.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p283_c1.txt 
python bc.py ./../../Database/p284/c1/20120409193516015.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p284_c1.txt 
python bc.py ./../../Database/p285/c1/20120416193405685.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p285_c1.txt 
python bc.py ./../../Database/p285/c2/20120416195946299.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p285_c2.txt 
python bc.py ./../../Database/p289/c1/20120426112910682.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p289_c1.txt 
python bc.py ./../../Database/p289/c2/20120426115246945.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p289_c2.txt 
python bc.py ./../../Database/p290/c1/20120426112928419.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p290_c1.txt 
python bc.py ./../../Database/p290/c2/20120426114727993.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p290_c2.txt 
python bc.py ./../../Database/p291/c1/20120409193744050.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p291_c1.txt 
python bc.py ./../../Database/p291/c2/20120409195902756.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p291_c2.txt 
python bc.py ./../../Database/p292/c1/20120418113345010.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p292_c1.txt 
python bc.py ./../../Database/p292/c2/20120418115806270.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p292_c2.txt 
python bc.py ./../../Database/p293/c1/20120418113301449.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p293_c1.txt 
python bc.py ./../../Database/p293/c2/20120418115514086.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p293_c2.txt 
python bc.py ./../../Database/p297/c1/20120412193716704.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p297_c1.txt 
python bc.py ./../../Database/p297/c2/20120412200020480.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p297_c2.txt 
python bc.py ./../../Database/p298/c1/20120420132007614.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p298_c1.txt 
python bc.py ./../../Database/p298/c2/20120420134236776.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p298_c2.txt 
python bc.py ./../../Database/p309/c1/20120412114007614.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p309_c1.txt 
python bc.py ./../../Database/p309/c2/20120412120826320.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p309_c2.txt 
python bc.py ./../../Database/p311/c1/20120425193058248.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p311_c1.txt 
python bc.py ./../../Database/p311/c2/20120425194312420.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p311_c2.txt 
python bc.py ./../../Database/p311/c3/20120425200320042.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p311_c3.txt 
python bc.py ./../../Database/p312/c1/20120420132549489.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p312_c1.txt 
python bc.py ./../../Database/p312/c2/20120420134925156.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p312_c2.txt 
python bc.py ./../../Database/p315/c1/20120416193500747.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p315_c1.txt 
python bc.py ./../../Database/p315/c2/20120416195907790.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p315_c2.txt 
python bc.py ./../../Database/p318/c1/20120430132551162.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p318_c1.txt 
python bc.py ./../../Database/p320/c1/20120423132004761.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p320_c1.txt 
python bc.py ./../../Database/p320/c2/20120423133602744.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p320_c2.txt 
python bc.py ./../../Database/p322/c1/20120423132021431.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p322_c1.txt 
python bc.py ./../../Database/p322/c2/20120423133545130.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p322_c2.txt 
python bc.py ./../../Database/p322/c3/20120423134524665.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p322_c3.txt 
python bc.py ./../../Database/p324/c1/20120412193525360.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p324_c1.txt 
python bc.py ./../../Database/p324/c2/20120412200004981.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p324_c2.txt 
python bc.py ./../../Database/p326/c1/20120426173157578.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p326_c1.txt 
python bc.py ./../../Database/p326/c2/20120426174731140.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p326_c2.txt 
python bc.py ./../../Database/p329/c1/20120409173643509.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p329_c1.txt 
python bc.py ./../../Database/p329/c2/20120409180115074.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p329_c2.txt 
python bc.py ./../../Database/p329/c3/20120409181747985.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p329_c3.txt 
python bc.py ./../../Database/p331/c1/20120427112541130.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p331_c1.txt 
python bc.py ./../../Database/p331/c2/20120427114812365.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p331_c2.txt 
python bc.py ./../../Database/p332/c1/20120430132405061.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p332_c1.txt 
python bc.py ./../../Database/p332/c2/20120430133808594.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p332_c2.txt 
python bc.py ./../../Database/p332/c3/20120430140159183.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p332_c3.txt 
python bc.py ./../../Database/p334/c1/20120416132900614.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p334_c1.txt 
python bc.py ./../../Database/p334/c2/20120416134902760.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p334_c2.txt 
python bc.py ./../../Database/p336/c1/20120416132753566.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p336_c1.txt 
python bc.py ./../../Database/p336/c2/20120416135139500.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p336_c2.txt 
python bc.py ./../../Database/p337/c1/20120416133214279.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p337_c1.txt 
python bc.py ./../../Database/p337/c2/20120416135928203.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p337_c2.txt 
python bc.py ./../../Database/p338/c1/20120416132910689.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p338_c1.txt 
python bc.py ./../../Database/p338/c2/20120416134653514.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p338_c2.txt 
python bc.py ./../../Database/p341/c1/20120420132317799.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p341_c1.txt 
python bc.py ./../../Database/p343/c1/20120416193133062.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p343_c1.txt 
python bc.py ./../../Database/p343/c2/20120416194326240.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p343_c2.txt 
python bc.py ./../../Database/p343/c3/20120416195541777.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p343_c3.txt 
python bc.py ./../../Database/p343/c4/20120416200726887.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p343_c4.txt 
python bc.py ./../../Database/p347/c1/20120425113150724.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p347_c1.txt 
python bc.py ./../../Database/p352/c1/20120503173200609.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p352_c1.txt 
python bc.py ./../../Database/p352/c2/20120503174819029.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p352_c2.txt 
python bc.py ./../../Database/p352/c3/20120503175729964.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p352_c3.txt 
python bc.py ./../../Database/p353/c1/20120426173138116.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p353_c1.txt 
python bc.py ./../../Database/p353/c2/20120426174936522.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p353_c2.txt 
python bc.py ./../../Database/p353/c3/20120426180518994.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p353_c3.txt 
python bc.py ./../../Database/p361/c1/20120503173010703.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p361_c1.txt 
python bc.py ./../../Database/p361/c2/20120503174027988.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p361_c2.txt 
python bc.py ./../../Database/p361/c3/20120503175557074.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p361_c3.txt 
python bc.py ./../../Database/p361/c4/20120503181058852.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p361_c4.txt 
python bc.py ./../../Database/p368/c1/20120426172925692.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p368_c1.txt 
python bc.py ./../../Database/p368/c2/20120426175116826.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p368_c2.txt 
python bc.py ./../../Database/p368/c3/20120426180605475.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p368_c3.txt 
python bc.py ./../../Database/p372/c1/20120412192501245.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p372_c1.txt 
python bc.py ./../../Database/p372/c2/20120412194533186.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p372_c2.txt 
python bc.py ./../../Database/p377/c1/20120409193538453.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p377_c1.txt 
python bc.py ./../../Database/p384/c1/20120425132619348.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p384_c1.txt 
python bc.py ./../../Database/p384/c2/20120425133951516.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p384_c2.txt 
python bc.py ./../../Database/p392/c1/20120425173136899.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p392_c1.txt 
python bc.py ./../../Database/p392/c2/20120425175143102.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p392_c2.txt 
python bc.py ./../../Database/p396/c1/20120416193547929.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p396_c1.txt 
python bc.py ./../../Database/p396/c2/20120416195759132.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p396_c2.txt 
python bc.py ./../../Database/p396/c3/20120416201129870.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p396_c3.txt 
python bc.py ./../../Database/p397/c1/20120430112732353.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p397_c1.txt 
python bc.py ./../../Database/p397/c2/20120430120341925.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p397_c2.txt 
python bc.py ./../../Database/p401/c1/20120426112913541.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p401_c1.txt 
python bc.py ./../../Database/p401/c2/20120426120300879.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p401_c2.txt 
python bc.py ./../../Database/p406/c1/20120420132054398.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p406_c1.txt 
python bc.py ./../../Database/p406/c2/20120420134246071.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p406_c2.txt 
python bc.py ./../../Database/p410/c1/20120430112620269.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p410_c1.txt 
python bc.py ./../../Database/p410/c2/20120430115210371.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p410_c2.txt 
python bc.py ./../../Database/p411/c1/20120430112628428.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p411_c1.txt 
python bc.py ./../../Database/p411/c2/20120430114948111.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p411_c2.txt 
python bc.py ./../../Database/p413/c1/20120418113054001.txt "$output_folder"/models/Cut"$cut"_Str"$stride"_fold5.h5 > "$output_folder"/winbites/winbites_p413_c1.txt 

echo "Through fifth fold of data..."

echo "Finished with all bite counts."



######################################


echo "Running C Code..."

gcc evalbites.c -o evalbites -lm

./evalbites ./../../Database/p005/c1/gt_union.txt "$output_folder"/winbites/winbites_p005_c1.txt > "$output_folder"/eval_output.txt
./evalbites ./../../Database/p005/c2/gt_union.txt "$output_folder"/winbites/winbites_p005_c2.txt >> "$output_folder"/eval_output.txt 
./evalbites ./../../Database/p006/c1/gt_union.txt "$output_folder"/winbites/winbites_p006_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p006/c2/gt_union.txt "$output_folder"/winbites/winbites_p006_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p007/c1/gt_union.txt "$output_folder"/winbites/winbites_p007_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p008/c1/gt_union.txt "$output_folder"/winbites/winbites_p008_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p009/c1/gt_union.txt "$output_folder"/winbites/winbites_p009_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p010/c1/gt_union.txt "$output_folder"/winbites/winbites_p010_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p011/c1/gt_union.txt "$output_folder"/winbites/winbites_p011_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p011/c2/gt_union.txt "$output_folder"/winbites/winbites_p011_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p012/c1/gt_union.txt "$output_folder"/winbites/winbites_p012_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p012/c2/gt_union.txt "$output_folder"/winbites/winbites_p012_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p013/c1/gt_union.txt "$output_folder"/winbites/winbites_p013_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p014/c1/gt_union.txt "$output_folder"/winbites/winbites_p014_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p015/c1/gt_union.txt "$output_folder"/winbites/winbites_p015_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p016/c1/gt_union.txt "$output_folder"/winbites/winbites_p016_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p016/c2/gt_union.txt "$output_folder"/winbites/winbites_p016_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p017/c1/gt_union.txt "$output_folder"/winbites/winbites_p017_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p017/c2/gt_union.txt "$output_folder"/winbites/winbites_p017_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p018/c1/gt_union.txt "$output_folder"/winbites/winbites_p018_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p018/c2/gt_union.txt "$output_folder"/winbites/winbites_p018_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p019/c1/gt_union.txt "$output_folder"/winbites/winbites_p019_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p019/c2/gt_union.txt "$output_folder"/winbites/winbites_p019_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p020/c1/gt_union.txt "$output_folder"/winbites/winbites_p020_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p021/c1/gt_union.txt "$output_folder"/winbites/winbites_p021_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p021/c2/gt_union.txt "$output_folder"/winbites/winbites_p021_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p022/c1/gt_union.txt "$output_folder"/winbites/winbites_p022_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p023/c1/gt_union.txt "$output_folder"/winbites/winbites_p023_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p024/c1/gt_union.txt "$output_folder"/winbites/winbites_p024_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p024/c2/gt_union.txt "$output_folder"/winbites/winbites_p024_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p025/c1/gt_union.txt "$output_folder"/winbites/winbites_p025_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p026/c1/gt_union.txt "$output_folder"/winbites/winbites_p026_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p026/c2/gt_union.txt "$output_folder"/winbites/winbites_p026_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p026/c3/gt_union.txt "$output_folder"/winbites/winbites_p026_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p027/c1/gt_union.txt "$output_folder"/winbites/winbites_p027_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p027/c2/gt_union.txt "$output_folder"/winbites/winbites_p027_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p027/c3/gt_union.txt "$output_folder"/winbites/winbites_p027_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p028/c1/gt_union.txt "$output_folder"/winbites/winbites_p028_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p028/c2/gt_union.txt "$output_folder"/winbites/winbites_p028_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p029/c1/gt_union.txt "$output_folder"/winbites/winbites_p029_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p030/c1/gt_union.txt "$output_folder"/winbites/winbites_p030_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p031/c1/gt_union.txt "$output_folder"/winbites/winbites_p031_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p033/c1/gt_union.txt "$output_folder"/winbites/winbites_p033_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p034/c1/gt_union.txt "$output_folder"/winbites/winbites_p034_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p034/c2/gt_union.txt "$output_folder"/winbites/winbites_p034_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p034/c3/gt_union.txt "$output_folder"/winbites/winbites_p034_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p035/c1/gt_union.txt "$output_folder"/winbites/winbites_p035_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p035/c2/gt_union.txt "$output_folder"/winbites/winbites_p035_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p036/c1/gt_union.txt "$output_folder"/winbites/winbites_p036_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p036/c2/gt_union.txt "$output_folder"/winbites/winbites_p036_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p037/c1/gt_union.txt "$output_folder"/winbites/winbites_p037_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p037/c2/gt_union.txt "$output_folder"/winbites/winbites_p037_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p038/c1/gt_union.txt "$output_folder"/winbites/winbites_p038_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p039/c1/gt_union.txt "$output_folder"/winbites/winbites_p039_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p040/c1/gt_union.txt "$output_folder"/winbites/winbites_p040_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p042/c1/gt_union.txt "$output_folder"/winbites/winbites_p042_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p042/c2/gt_union.txt "$output_folder"/winbites/winbites_p042_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p043/c1/gt_union.txt "$output_folder"/winbites/winbites_p043_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p044/c1/gt_union.txt "$output_folder"/winbites/winbites_p044_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p045/c1/gt_union.txt "$output_folder"/winbites/winbites_p045_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p045/c2/gt_union.txt "$output_folder"/winbites/winbites_p045_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p045/c3/gt_union.txt "$output_folder"/winbites/winbites_p045_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p046/c1/gt_union.txt "$output_folder"/winbites/winbites_p046_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p047/c1/gt_union.txt "$output_folder"/winbites/winbites_p047_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p047/c2/gt_union.txt "$output_folder"/winbites/winbites_p047_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p048/c1/gt_union.txt "$output_folder"/winbites/winbites_p048_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p050/c1/gt_union.txt "$output_folder"/winbites/winbites_p050_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p051/c1/gt_union.txt "$output_folder"/winbites/winbites_p051_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p051/c2/gt_union.txt "$output_folder"/winbites/winbites_p051_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p052/c1/gt_union.txt "$output_folder"/winbites/winbites_p052_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p052/c2/gt_union.txt "$output_folder"/winbites/winbites_p052_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p053/c1/gt_union.txt "$output_folder"/winbites/winbites_p053_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p054/c1/gt_union.txt "$output_folder"/winbites/winbites_p054_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p054/c2/gt_union.txt "$output_folder"/winbites/winbites_p054_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p055/c1/gt_union.txt "$output_folder"/winbites/winbites_p055_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p055/c2/gt_union.txt "$output_folder"/winbites/winbites_p055_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p056/c1/gt_union.txt "$output_folder"/winbites/winbites_p056_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p056/c2/gt_union.txt "$output_folder"/winbites/winbites_p056_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p057/c1/gt_union.txt "$output_folder"/winbites/winbites_p057_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p057/c2/gt_union.txt "$output_folder"/winbites/winbites_p057_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p057/c3/gt_union.txt "$output_folder"/winbites/winbites_p057_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p058/c1/gt_union.txt "$output_folder"/winbites/winbites_p058_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p059/c1/gt_union.txt "$output_folder"/winbites/winbites_p059_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p060/c1/gt_union.txt "$output_folder"/winbites/winbites_p060_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p060/c2/gt_union.txt "$output_folder"/winbites/winbites_p060_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p060/c3/gt_union.txt "$output_folder"/winbites/winbites_p060_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p061/c1/gt_union.txt "$output_folder"/winbites/winbites_p061_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p061/c2/gt_union.txt "$output_folder"/winbites/winbites_p061_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p061/c3/gt_union.txt "$output_folder"/winbites/winbites_p061_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p062/c1/gt_union.txt "$output_folder"/winbites/winbites_p062_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p062/c2/gt_union.txt "$output_folder"/winbites/winbites_p062_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p064/c1/gt_union.txt "$output_folder"/winbites/winbites_p064_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p064/c2/gt_union.txt "$output_folder"/winbites/winbites_p064_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p065/c1/gt_union.txt "$output_folder"/winbites/winbites_p065_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p065/c2/gt_union.txt "$output_folder"/winbites/winbites_p065_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p066/c1/gt_union.txt "$output_folder"/winbites/winbites_p066_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p066/c2/gt_union.txt "$output_folder"/winbites/winbites_p066_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p066/c3/gt_union.txt "$output_folder"/winbites/winbites_p066_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p067/c1/gt_union.txt "$output_folder"/winbites/winbites_p067_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p067/c2/gt_union.txt "$output_folder"/winbites/winbites_p067_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p068/c1/gt_union.txt "$output_folder"/winbites/winbites_p068_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p068/c2/gt_union.txt "$output_folder"/winbites/winbites_p068_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p069/c1/gt_union.txt "$output_folder"/winbites/winbites_p069_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p069/c2/gt_union.txt "$output_folder"/winbites/winbites_p069_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p069/c3/gt_union.txt "$output_folder"/winbites/winbites_p069_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p069/c4/gt_union.txt "$output_folder"/winbites/winbites_p069_c4.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p070/c1/gt_union.txt "$output_folder"/winbites/winbites_p070_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p070/c2/gt_union.txt "$output_folder"/winbites/winbites_p070_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p070/c3/gt_union.txt "$output_folder"/winbites/winbites_p070_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p071/c1/gt_union.txt "$output_folder"/winbites/winbites_p071_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p071/c2/gt_union.txt "$output_folder"/winbites/winbites_p071_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p072/c1/gt_union.txt "$output_folder"/winbites/winbites_p072_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p074/c1/gt_union.txt "$output_folder"/winbites/winbites_p074_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p074/c2/gt_union.txt "$output_folder"/winbites/winbites_p074_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p075/c1/gt_union.txt "$output_folder"/winbites/winbites_p075_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p077/c1/gt_union.txt "$output_folder"/winbites/winbites_p077_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p077/c2/gt_union.txt "$output_folder"/winbites/winbites_p077_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p077/c3/gt_union.txt "$output_folder"/winbites/winbites_p077_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p078/c1/gt_union.txt "$output_folder"/winbites/winbites_p078_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p078/c2/gt_union.txt "$output_folder"/winbites/winbites_p078_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p079/c1/gt_union.txt "$output_folder"/winbites/winbites_p079_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p079/c2/gt_union.txt "$output_folder"/winbites/winbites_p079_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p080/c1/gt_union.txt "$output_folder"/winbites/winbites_p080_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p080/c2/gt_union.txt "$output_folder"/winbites/winbites_p080_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p081/c1/gt_union.txt "$output_folder"/winbites/winbites_p081_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p082/c1/gt_union.txt "$output_folder"/winbites/winbites_p082_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p082/c2/gt_union.txt "$output_folder"/winbites/winbites_p082_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p083/c1/gt_union.txt "$output_folder"/winbites/winbites_p083_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p083/c2/gt_union.txt "$output_folder"/winbites/winbites_p083_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p084/c1/gt_union.txt "$output_folder"/winbites/winbites_p084_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p084/c2/gt_union.txt "$output_folder"/winbites/winbites_p084_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p085/c1/gt_union.txt "$output_folder"/winbites/winbites_p085_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p086/c1/gt_union.txt "$output_folder"/winbites/winbites_p086_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p087/c1/gt_union.txt "$output_folder"/winbites/winbites_p087_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p087/c2/gt_union.txt "$output_folder"/winbites/winbites_p087_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p088/c1/gt_union.txt "$output_folder"/winbites/winbites_p088_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p088/c2/gt_union.txt "$output_folder"/winbites/winbites_p088_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p089/c1/gt_union.txt "$output_folder"/winbites/winbites_p089_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p090/c1/gt_union.txt "$output_folder"/winbites/winbites_p090_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p090/c2/gt_union.txt "$output_folder"/winbites/winbites_p090_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p091/c1/gt_union.txt "$output_folder"/winbites/winbites_p091_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p092/c1/gt_union.txt "$output_folder"/winbites/winbites_p092_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p093/c1/gt_union.txt "$output_folder"/winbites/winbites_p093_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p093/c2/gt_union.txt "$output_folder"/winbites/winbites_p093_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p095/c1/gt_union.txt "$output_folder"/winbites/winbites_p095_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p096/c1/gt_union.txt "$output_folder"/winbites/winbites_p096_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p098/c1/gt_union.txt "$output_folder"/winbites/winbites_p098_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p098/c2/gt_union.txt "$output_folder"/winbites/winbites_p098_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p099/c1/gt_union.txt "$output_folder"/winbites/winbites_p099_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p099/c2/gt_union.txt "$output_folder"/winbites/winbites_p099_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p100/c1/gt_union.txt "$output_folder"/winbites/winbites_p100_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p101/c1/gt_union.txt "$output_folder"/winbites/winbites_p101_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p101/c2/gt_union.txt "$output_folder"/winbites/winbites_p101_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p102/c1/gt_union.txt "$output_folder"/winbites/winbites_p102_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p102/c2/gt_union.txt "$output_folder"/winbites/winbites_p102_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p103/c1/gt_union.txt "$output_folder"/winbites/winbites_p103_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p103/c2/gt_union.txt "$output_folder"/winbites/winbites_p103_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p104/c1/gt_union.txt "$output_folder"/winbites/winbites_p104_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p105/c1/gt_union.txt "$output_folder"/winbites/winbites_p105_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p106/c1/gt_union.txt "$output_folder"/winbites/winbites_p106_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p107/c1/gt_union.txt "$output_folder"/winbites/winbites_p107_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p107/c2/gt_union.txt "$output_folder"/winbites/winbites_p107_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p108/c1/gt_union.txt "$output_folder"/winbites/winbites_p108_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p108/c2/gt_union.txt "$output_folder"/winbites/winbites_p108_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p109/c1/gt_union.txt "$output_folder"/winbites/winbites_p109_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p109/c2/gt_union.txt "$output_folder"/winbites/winbites_p109_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p110/c1/gt_union.txt "$output_folder"/winbites/winbites_p110_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p111/c1/gt_union.txt "$output_folder"/winbites/winbites_p111_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p111/c2/gt_union.txt "$output_folder"/winbites/winbites_p111_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p111/c3/gt_union.txt "$output_folder"/winbites/winbites_p111_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p113/c1/gt_union.txt "$output_folder"/winbites/winbites_p113_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p113/c2/gt_union.txt "$output_folder"/winbites/winbites_p113_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p114/c1/gt_union.txt "$output_folder"/winbites/winbites_p114_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p114/c2/gt_union.txt "$output_folder"/winbites/winbites_p114_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p115/c1/gt_union.txt "$output_folder"/winbites/winbites_p115_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p115/c2/gt_union.txt "$output_folder"/winbites/winbites_p115_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p115/c3/gt_union.txt "$output_folder"/winbites/winbites_p115_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p116/c1/gt_union.txt "$output_folder"/winbites/winbites_p116_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p116/c2/gt_union.txt "$output_folder"/winbites/winbites_p116_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p116/c3/gt_union.txt "$output_folder"/winbites/winbites_p116_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p117/c1/gt_union.txt "$output_folder"/winbites/winbites_p117_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p117/c2/gt_union.txt "$output_folder"/winbites/winbites_p117_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p117/c3/gt_union.txt "$output_folder"/winbites/winbites_p117_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p117/c4/gt_union.txt "$output_folder"/winbites/winbites_p117_c4.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p118/c1/gt_union.txt "$output_folder"/winbites/winbites_p118_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p118/c2/gt_union.txt "$output_folder"/winbites/winbites_p118_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p119/c1/gt_union.txt "$output_folder"/winbites/winbites_p119_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p119/c2/gt_union.txt "$output_folder"/winbites/winbites_p119_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p120/c1/gt_union.txt "$output_folder"/winbites/winbites_p120_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p120/c2/gt_union.txt "$output_folder"/winbites/winbites_p120_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p121/c1/gt_union.txt "$output_folder"/winbites/winbites_p121_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p121/c2/gt_union.txt "$output_folder"/winbites/winbites_p121_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p122/c1/gt_union.txt "$output_folder"/winbites/winbites_p122_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p122/c2/gt_union.txt "$output_folder"/winbites/winbites_p122_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p123/c1/gt_union.txt "$output_folder"/winbites/winbites_p123_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p123/c2/gt_union.txt "$output_folder"/winbites/winbites_p123_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p125/c1/gt_union.txt "$output_folder"/winbites/winbites_p125_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p125/c2/gt_union.txt "$output_folder"/winbites/winbites_p125_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p129/c1/gt_union.txt "$output_folder"/winbites/winbites_p129_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p129/c2/gt_union.txt "$output_folder"/winbites/winbites_p129_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p130/c1/gt_union.txt "$output_folder"/winbites/winbites_p130_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p131/c1/gt_union.txt "$output_folder"/winbites/winbites_p131_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p132/c1/gt_union.txt "$output_folder"/winbites/winbites_p132_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p132/c2/gt_union.txt "$output_folder"/winbites/winbites_p132_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p133/c1/gt_union.txt "$output_folder"/winbites/winbites_p133_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p134/c1/gt_union.txt "$output_folder"/winbites/winbites_p134_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p134/c2/gt_union.txt "$output_folder"/winbites/winbites_p134_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p134/c3/gt_union.txt "$output_folder"/winbites/winbites_p134_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p136/c1/gt_union.txt "$output_folder"/winbites/winbites_p136_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p137/c1/gt_union.txt "$output_folder"/winbites/winbites_p137_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p137/c2/gt_union.txt "$output_folder"/winbites/winbites_p137_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p138/c1/gt_union.txt "$output_folder"/winbites/winbites_p138_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p139/c1/gt_union.txt "$output_folder"/winbites/winbites_p139_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p140/c1/gt_union.txt "$output_folder"/winbites/winbites_p140_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p142/c1/gt_union.txt "$output_folder"/winbites/winbites_p142_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p142/c2/gt_union.txt "$output_folder"/winbites/winbites_p142_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p143/c1/gt_union.txt "$output_folder"/winbites/winbites_p143_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p143/c2/gt_union.txt "$output_folder"/winbites/winbites_p143_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p144/c1/gt_union.txt "$output_folder"/winbites/winbites_p144_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p144/c2/gt_union.txt "$output_folder"/winbites/winbites_p144_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p145/c1/gt_union.txt "$output_folder"/winbites/winbites_p145_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p146/c1/gt_union.txt "$output_folder"/winbites/winbites_p146_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p146/c2/gt_union.txt "$output_folder"/winbites/winbites_p146_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p146/c3/gt_union.txt "$output_folder"/winbites/winbites_p146_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p148/c1/gt_union.txt "$output_folder"/winbites/winbites_p148_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p148/c2/gt_union.txt "$output_folder"/winbites/winbites_p148_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p150/c1/gt_union.txt "$output_folder"/winbites/winbites_p150_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p150/c2/gt_union.txt "$output_folder"/winbites/winbites_p150_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p151/c1/gt_union.txt "$output_folder"/winbites/winbites_p151_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p151/c2/gt_union.txt "$output_folder"/winbites/winbites_p151_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p153/c1/gt_union.txt "$output_folder"/winbites/winbites_p153_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p154/c1/gt_union.txt "$output_folder"/winbites/winbites_p154_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p157/c1/gt_union.txt "$output_folder"/winbites/winbites_p157_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p157/c2/gt_union.txt "$output_folder"/winbites/winbites_p157_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p158/c1/gt_union.txt "$output_folder"/winbites/winbites_p158_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p158/c2/gt_union.txt "$output_folder"/winbites/winbites_p158_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p159/c1/gt_union.txt "$output_folder"/winbites/winbites_p159_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p160/c1/gt_union.txt "$output_folder"/winbites/winbites_p160_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p160/c2/gt_union.txt "$output_folder"/winbites/winbites_p160_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p161/c1/gt_union.txt "$output_folder"/winbites/winbites_p161_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p161/c2/gt_union.txt "$output_folder"/winbites/winbites_p161_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p162/c1/gt_union.txt "$output_folder"/winbites/winbites_p162_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p164/c1/gt_union.txt "$output_folder"/winbites/winbites_p164_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p165/c1/gt_union.txt "$output_folder"/winbites/winbites_p165_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p165/c2/gt_union.txt "$output_folder"/winbites/winbites_p165_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p166/c1/gt_union.txt "$output_folder"/winbites/winbites_p166_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p166/c2/gt_union.txt "$output_folder"/winbites/winbites_p166_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p169/c1/gt_union.txt "$output_folder"/winbites/winbites_p169_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p169/c2/gt_union.txt "$output_folder"/winbites/winbites_p169_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p170/c1/gt_union.txt "$output_folder"/winbites/winbites_p170_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p171/c1/gt_union.txt "$output_folder"/winbites/winbites_p171_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p171/c2/gt_union.txt "$output_folder"/winbites/winbites_p171_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p172/c1/gt_union.txt "$output_folder"/winbites/winbites_p172_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p172/c2/gt_union.txt "$output_folder"/winbites/winbites_p172_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p173/c1/gt_union.txt "$output_folder"/winbites/winbites_p173_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p173/c2/gt_union.txt "$output_folder"/winbites/winbites_p173_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p174/c1/gt_union.txt "$output_folder"/winbites/winbites_p174_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p174/c2/gt_union.txt "$output_folder"/winbites/winbites_p174_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p174/c3/gt_union.txt "$output_folder"/winbites/winbites_p174_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p175/c1/gt_union.txt "$output_folder"/winbites/winbites_p175_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p175/c2/gt_union.txt "$output_folder"/winbites/winbites_p175_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p175/c3/gt_union.txt "$output_folder"/winbites/winbites_p175_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p176/c1/gt_union.txt "$output_folder"/winbites/winbites_p176_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p176/c2/gt_union.txt "$output_folder"/winbites/winbites_p176_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p177/c1/gt_union.txt "$output_folder"/winbites/winbites_p177_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p177/c2/gt_union.txt "$output_folder"/winbites/winbites_p177_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p178/c1/gt_union.txt "$output_folder"/winbites/winbites_p178_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p178/c2/gt_union.txt "$output_folder"/winbites/winbites_p178_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p179/c1/gt_union.txt "$output_folder"/winbites/winbites_p179_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p179/c2/gt_union.txt "$output_folder"/winbites/winbites_p179_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p179/c3/gt_union.txt "$output_folder"/winbites/winbites_p179_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p180/c1/gt_union.txt "$output_folder"/winbites/winbites_p180_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p180/c2/gt_union.txt "$output_folder"/winbites/winbites_p180_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p180/c3/gt_union.txt "$output_folder"/winbites/winbites_p180_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p181/c1/gt_union.txt "$output_folder"/winbites/winbites_p181_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p181/c2/gt_union.txt "$output_folder"/winbites/winbites_p181_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p181/c3/gt_union.txt "$output_folder"/winbites/winbites_p181_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p182/c1/gt_union.txt "$output_folder"/winbites/winbites_p182_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p182/c2/gt_union.txt "$output_folder"/winbites/winbites_p182_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p184/c1/gt_union.txt "$output_folder"/winbites/winbites_p184_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p184/c2/gt_union.txt "$output_folder"/winbites/winbites_p184_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p185/c1/gt_union.txt "$output_folder"/winbites/winbites_p185_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p185/c2/gt_union.txt "$output_folder"/winbites/winbites_p185_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p186/c1/gt_union.txt "$output_folder"/winbites/winbites_p186_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p186/c2/gt_union.txt "$output_folder"/winbites/winbites_p186_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p187/c1/gt_union.txt "$output_folder"/winbites/winbites_p187_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p187/c2/gt_union.txt "$output_folder"/winbites/winbites_p187_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p187/c3/gt_union.txt "$output_folder"/winbites/winbites_p187_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p188/c1/gt_union.txt "$output_folder"/winbites/winbites_p188_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p188/c2/gt_union.txt "$output_folder"/winbites/winbites_p188_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p189/c1/gt_union.txt "$output_folder"/winbites/winbites_p189_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p190/c1/gt_union.txt "$output_folder"/winbites/winbites_p190_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p190/c2/gt_union.txt "$output_folder"/winbites/winbites_p190_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p192/c1/gt_union.txt "$output_folder"/winbites/winbites_p192_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p192/c2/gt_union.txt "$output_folder"/winbites/winbites_p192_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p194/c1/gt_union.txt "$output_folder"/winbites/winbites_p194_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p194/c2/gt_union.txt "$output_folder"/winbites/winbites_p194_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p194/c3/gt_union.txt "$output_folder"/winbites/winbites_p194_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p195/c1/gt_union.txt "$output_folder"/winbites/winbites_p195_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p195/c2/gt_union.txt "$output_folder"/winbites/winbites_p195_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p195/c3/gt_union.txt "$output_folder"/winbites/winbites_p195_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p198/c1/gt_union.txt "$output_folder"/winbites/winbites_p198_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p199/c1/gt_union.txt "$output_folder"/winbites/winbites_p199_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p201/c1/gt_union.txt "$output_folder"/winbites/winbites_p201_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p202/c1/gt_union.txt "$output_folder"/winbites/winbites_p202_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p204/c1/gt_union.txt "$output_folder"/winbites/winbites_p204_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p204/c2/gt_union.txt "$output_folder"/winbites/winbites_p204_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p204/c3/gt_union.txt "$output_folder"/winbites/winbites_p204_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p205/c1/gt_union.txt "$output_folder"/winbites/winbites_p205_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p205/c2/gt_union.txt "$output_folder"/winbites/winbites_p205_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p206/c1/gt_union.txt "$output_folder"/winbites/winbites_p206_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p207/c1/gt_union.txt "$output_folder"/winbites/winbites_p207_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p207/c2/gt_union.txt "$output_folder"/winbites/winbites_p207_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p207/c3/gt_union.txt "$output_folder"/winbites/winbites_p207_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p208/c1/gt_union.txt "$output_folder"/winbites/winbites_p208_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p208/c2/gt_union.txt "$output_folder"/winbites/winbites_p208_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p209/c1/gt_union.txt "$output_folder"/winbites/winbites_p209_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p209/c2/gt_union.txt "$output_folder"/winbites/winbites_p209_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p215/c1/gt_union.txt "$output_folder"/winbites/winbites_p215_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p215/c2/gt_union.txt "$output_folder"/winbites/winbites_p215_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p215/c3/gt_union.txt "$output_folder"/winbites/winbites_p215_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p217/c1/gt_union.txt "$output_folder"/winbites/winbites_p217_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p217/c2/gt_union.txt "$output_folder"/winbites/winbites_p217_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p217/c3/gt_union.txt "$output_folder"/winbites/winbites_p217_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p218/c1/gt_union.txt "$output_folder"/winbites/winbites_p218_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p218/c2/gt_union.txt "$output_folder"/winbites/winbites_p218_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p218/c3/gt_union.txt "$output_folder"/winbites/winbites_p218_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p218/c4/gt_union.txt "$output_folder"/winbites/winbites_p218_c4.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p219/c1/gt_union.txt "$output_folder"/winbites/winbites_p219_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p219/c2/gt_union.txt "$output_folder"/winbites/winbites_p219_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p220/c1/gt_union.txt "$output_folder"/winbites/winbites_p220_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p220/c2/gt_union.txt "$output_folder"/winbites/winbites_p220_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p221/c1/gt_union.txt "$output_folder"/winbites/winbites_p221_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p224/c1/gt_union.txt "$output_folder"/winbites/winbites_p224_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p226/c1/gt_union.txt "$output_folder"/winbites/winbites_p226_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p226/c2/gt_union.txt "$output_folder"/winbites/winbites_p226_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p229/c1/gt_union.txt "$output_folder"/winbites/winbites_p229_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p229/c2/gt_union.txt "$output_folder"/winbites/winbites_p229_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p230/c1/gt_union.txt "$output_folder"/winbites/winbites_p230_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p230/c2/gt_union.txt "$output_folder"/winbites/winbites_p230_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p231/c1/gt_union.txt "$output_folder"/winbites/winbites_p231_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p231/c2/gt_union.txt "$output_folder"/winbites/winbites_p231_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p232/c1/gt_union.txt "$output_folder"/winbites/winbites_p232_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p233/c1/gt_union.txt "$output_folder"/winbites/winbites_p233_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p234/c1/gt_union.txt "$output_folder"/winbites/winbites_p234_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p234/c2/gt_union.txt "$output_folder"/winbites/winbites_p234_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p235/c1/gt_union.txt "$output_folder"/winbites/winbites_p235_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p236/c1/gt_union.txt "$output_folder"/winbites/winbites_p236_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p236/c2/gt_union.txt "$output_folder"/winbites/winbites_p236_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p237/c1/gt_union.txt "$output_folder"/winbites/winbites_p237_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p237/c2/gt_union.txt "$output_folder"/winbites/winbites_p237_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p241/c1/gt_union.txt "$output_folder"/winbites/winbites_p241_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p241/c2/gt_union.txt "$output_folder"/winbites/winbites_p241_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p242/c1/gt_union.txt "$output_folder"/winbites/winbites_p242_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p242/c2/gt_union.txt "$output_folder"/winbites/winbites_p242_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p244/c1/gt_union.txt "$output_folder"/winbites/winbites_p244_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p244/c2/gt_union.txt "$output_folder"/winbites/winbites_p244_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p245/c1/gt_union.txt "$output_folder"/winbites/winbites_p245_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p246/c1/gt_union.txt "$output_folder"/winbites/winbites_p246_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p247/c1/gt_union.txt "$output_folder"/winbites/winbites_p247_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p247/c2/gt_union.txt "$output_folder"/winbites/winbites_p247_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p248/c1/gt_union.txt "$output_folder"/winbites/winbites_p248_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p251/c1/gt_union.txt "$output_folder"/winbites/winbites_p251_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p251/c2/gt_union.txt "$output_folder"/winbites/winbites_p251_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p252/c1/gt_union.txt "$output_folder"/winbites/winbites_p252_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p252/c2/gt_union.txt "$output_folder"/winbites/winbites_p252_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p253/c1/gt_union.txt "$output_folder"/winbites/winbites_p253_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p253/c2/gt_union.txt "$output_folder"/winbites/winbites_p253_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p256/c1/gt_union.txt "$output_folder"/winbites/winbites_p256_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p257/c1/gt_union.txt "$output_folder"/winbites/winbites_p257_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p257/c2/gt_union.txt "$output_folder"/winbites/winbites_p257_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p259/c1/gt_union.txt "$output_folder"/winbites/winbites_p259_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p260/c1/gt_union.txt "$output_folder"/winbites/winbites_p260_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p260/c2/gt_union.txt "$output_folder"/winbites/winbites_p260_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p262/c1/gt_union.txt "$output_folder"/winbites/winbites_p262_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p262/c2/gt_union.txt "$output_folder"/winbites/winbites_p262_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p262/c3/gt_union.txt "$output_folder"/winbites/winbites_p262_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p263/c1/gt_union.txt "$output_folder"/winbites/winbites_p263_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p263/c2/gt_union.txt "$output_folder"/winbites/winbites_p263_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p264/c1/gt_union.txt "$output_folder"/winbites/winbites_p264_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p264/c2/gt_union.txt "$output_folder"/winbites/winbites_p264_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p265/c1/gt_union.txt "$output_folder"/winbites/winbites_p265_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p265/c2/gt_union.txt "$output_folder"/winbites/winbites_p265_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p266/c1/gt_union.txt "$output_folder"/winbites/winbites_p266_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p266/c2/gt_union.txt "$output_folder"/winbites/winbites_p266_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p267/c1/gt_union.txt "$output_folder"/winbites/winbites_p267_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p267/c2/gt_union.txt "$output_folder"/winbites/winbites_p267_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p268/c1/gt_union.txt "$output_folder"/winbites/winbites_p268_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p268/c2/gt_union.txt "$output_folder"/winbites/winbites_p268_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p269/c1/gt_union.txt "$output_folder"/winbites/winbites_p269_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p269/c2/gt_union.txt "$output_folder"/winbites/winbites_p269_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p270/c1/gt_union.txt "$output_folder"/winbites/winbites_p270_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p270/c2/gt_union.txt "$output_folder"/winbites/winbites_p270_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p270/c3/gt_union.txt "$output_folder"/winbites/winbites_p270_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p270/c4/gt_union.txt "$output_folder"/winbites/winbites_p270_c4.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p270/c5/gt_union.txt "$output_folder"/winbites/winbites_p270_c5.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p271/c1/gt_union.txt "$output_folder"/winbites/winbites_p271_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p271/c2/gt_union.txt "$output_folder"/winbites/winbites_p271_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p271/c3/gt_union.txt "$output_folder"/winbites/winbites_p271_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p272/c1/gt_union.txt "$output_folder"/winbites/winbites_p272_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p272/c2/gt_union.txt "$output_folder"/winbites/winbites_p272_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p272/c3/gt_union.txt "$output_folder"/winbites/winbites_p272_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p273/c1/gt_union.txt "$output_folder"/winbites/winbites_p273_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p273/c2/gt_union.txt "$output_folder"/winbites/winbites_p273_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p274/c1/gt_union.txt "$output_folder"/winbites/winbites_p274_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p274/c2/gt_union.txt "$output_folder"/winbites/winbites_p274_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p275/c1/gt_union.txt "$output_folder"/winbites/winbites_p275_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p275/c2/gt_union.txt "$output_folder"/winbites/winbites_p275_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p276/c1/gt_union.txt "$output_folder"/winbites/winbites_p276_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p276/c2/gt_union.txt "$output_folder"/winbites/winbites_p276_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p277/c1/gt_union.txt "$output_folder"/winbites/winbites_p277_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p277/c2/gt_union.txt "$output_folder"/winbites/winbites_p277_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p277/c3/gt_union.txt "$output_folder"/winbites/winbites_p277_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p278/c1/gt_union.txt "$output_folder"/winbites/winbites_p278_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p278/c2/gt_union.txt "$output_folder"/winbites/winbites_p278_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p278/c3/gt_union.txt "$output_folder"/winbites/winbites_p278_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p279/c1/gt_union.txt "$output_folder"/winbites/winbites_p279_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p279/c2/gt_union.txt "$output_folder"/winbites/winbites_p279_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p279/c3/gt_union.txt "$output_folder"/winbites/winbites_p279_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p280/c1/gt_union.txt "$output_folder"/winbites/winbites_p280_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p280/c2/gt_union.txt "$output_folder"/winbites/winbites_p280_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p281/c1/gt_union.txt "$output_folder"/winbites/winbites_p281_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p281/c2/gt_union.txt "$output_folder"/winbites/winbites_p281_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p281/c3/gt_union.txt "$output_folder"/winbites/winbites_p281_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p282/c1/gt_union.txt "$output_folder"/winbites/winbites_p282_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p283/c1/gt_union.txt "$output_folder"/winbites/winbites_p283_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p284/c1/gt_union.txt "$output_folder"/winbites/winbites_p284_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p285/c1/gt_union.txt "$output_folder"/winbites/winbites_p285_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p285/c2/gt_union.txt "$output_folder"/winbites/winbites_p285_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p289/c1/gt_union.txt "$output_folder"/winbites/winbites_p289_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p289/c2/gt_union.txt "$output_folder"/winbites/winbites_p289_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p290/c1/gt_union.txt "$output_folder"/winbites/winbites_p290_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p290/c2/gt_union.txt "$output_folder"/winbites/winbites_p290_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p291/c1/gt_union.txt "$output_folder"/winbites/winbites_p291_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p291/c2/gt_union.txt "$output_folder"/winbites/winbites_p291_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p292/c1/gt_union.txt "$output_folder"/winbites/winbites_p292_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p292/c2/gt_union.txt "$output_folder"/winbites/winbites_p292_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p293/c1/gt_union.txt "$output_folder"/winbites/winbites_p293_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p293/c2/gt_union.txt "$output_folder"/winbites/winbites_p293_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p297/c1/gt_union.txt "$output_folder"/winbites/winbites_p297_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p297/c2/gt_union.txt "$output_folder"/winbites/winbites_p297_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p298/c1/gt_union.txt "$output_folder"/winbites/winbites_p298_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p298/c2/gt_union.txt "$output_folder"/winbites/winbites_p298_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p309/c1/gt_union.txt "$output_folder"/winbites/winbites_p309_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p309/c2/gt_union.txt "$output_folder"/winbites/winbites_p309_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p311/c1/gt_union.txt "$output_folder"/winbites/winbites_p311_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p311/c2/gt_union.txt "$output_folder"/winbites/winbites_p311_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p311/c3/gt_union.txt "$output_folder"/winbites/winbites_p311_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p312/c1/gt_union.txt "$output_folder"/winbites/winbites_p312_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p312/c2/gt_union.txt "$output_folder"/winbites/winbites_p312_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p315/c1/gt_union.txt "$output_folder"/winbites/winbites_p315_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p315/c2/gt_union.txt "$output_folder"/winbites/winbites_p315_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p318/c1/gt_union.txt "$output_folder"/winbites/winbites_p318_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p320/c1/gt_union.txt "$output_folder"/winbites/winbites_p320_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p320/c2/gt_union.txt "$output_folder"/winbites/winbites_p320_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p322/c1/gt_union.txt "$output_folder"/winbites/winbites_p322_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p322/c2/gt_union.txt "$output_folder"/winbites/winbites_p322_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p322/c3/gt_union.txt "$output_folder"/winbites/winbites_p322_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p324/c1/gt_union.txt "$output_folder"/winbites/winbites_p324_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p324/c2/gt_union.txt "$output_folder"/winbites/winbites_p324_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p326/c1/gt_union.txt "$output_folder"/winbites/winbites_p326_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p326/c2/gt_union.txt "$output_folder"/winbites/winbites_p326_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p329/c1/gt_union.txt "$output_folder"/winbites/winbites_p329_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p329/c2/gt_union.txt "$output_folder"/winbites/winbites_p329_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p329/c3/gt_union.txt "$output_folder"/winbites/winbites_p329_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p331/c1/gt_union.txt "$output_folder"/winbites/winbites_p331_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p331/c2/gt_union.txt "$output_folder"/winbites/winbites_p331_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p332/c1/gt_union.txt "$output_folder"/winbites/winbites_p332_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p332/c2/gt_union.txt "$output_folder"/winbites/winbites_p332_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p332/c3/gt_union.txt "$output_folder"/winbites/winbites_p332_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p334/c1/gt_union.txt "$output_folder"/winbites/winbites_p334_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p334/c2/gt_union.txt "$output_folder"/winbites/winbites_p334_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p336/c1/gt_union.txt "$output_folder"/winbites/winbites_p336_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p336/c2/gt_union.txt "$output_folder"/winbites/winbites_p336_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p337/c1/gt_union.txt "$output_folder"/winbites/winbites_p337_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p337/c2/gt_union.txt "$output_folder"/winbites/winbites_p337_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p338/c1/gt_union.txt "$output_folder"/winbites/winbites_p338_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p338/c2/gt_union.txt "$output_folder"/winbites/winbites_p338_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p341/c1/gt_union.txt "$output_folder"/winbites/winbites_p341_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p343/c1/gt_union.txt "$output_folder"/winbites/winbites_p343_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p343/c2/gt_union.txt "$output_folder"/winbites/winbites_p343_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p343/c3/gt_union.txt "$output_folder"/winbites/winbites_p343_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p343/c4/gt_union.txt "$output_folder"/winbites/winbites_p343_c4.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p347/c1/gt_union.txt "$output_folder"/winbites/winbites_p347_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p352/c1/gt_union.txt "$output_folder"/winbites/winbites_p352_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p352/c2/gt_union.txt "$output_folder"/winbites/winbites_p352_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p352/c3/gt_union.txt "$output_folder"/winbites/winbites_p352_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p353/c1/gt_union.txt "$output_folder"/winbites/winbites_p353_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p353/c2/gt_union.txt "$output_folder"/winbites/winbites_p353_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p353/c3/gt_union.txt "$output_folder"/winbites/winbites_p353_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p361/c1/gt_union.txt "$output_folder"/winbites/winbites_p361_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p361/c2/gt_union.txt "$output_folder"/winbites/winbites_p361_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p361/c3/gt_union.txt "$output_folder"/winbites/winbites_p361_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p361/c4/gt_union.txt "$output_folder"/winbites/winbites_p361_c4.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p368/c1/gt_union.txt "$output_folder"/winbites/winbites_p368_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p368/c2/gt_union.txt "$output_folder"/winbites/winbites_p368_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p368/c3/gt_union.txt "$output_folder"/winbites/winbites_p368_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p372/c1/gt_union.txt "$output_folder"/winbites/winbites_p372_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p372/c2/gt_union.txt "$output_folder"/winbites/winbites_p372_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p377/c1/gt_union.txt "$output_folder"/winbites/winbites_p377_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p384/c1/gt_union.txt "$output_folder"/winbites/winbites_p384_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p384/c2/gt_union.txt "$output_folder"/winbites/winbites_p384_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p392/c1/gt_union.txt "$output_folder"/winbites/winbites_p392_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p392/c2/gt_union.txt "$output_folder"/winbites/winbites_p392_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p396/c1/gt_union.txt "$output_folder"/winbites/winbites_p396_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p396/c2/gt_union.txt "$output_folder"/winbites/winbites_p396_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p396/c3/gt_union.txt "$output_folder"/winbites/winbites_p396_c3.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p397/c1/gt_union.txt "$output_folder"/winbites/winbites_p397_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p397/c2/gt_union.txt "$output_folder"/winbites/winbites_p397_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p401/c1/gt_union.txt "$output_folder"/winbites/winbites_p401_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p401/c2/gt_union.txt "$output_folder"/winbites/winbites_p401_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p406/c1/gt_union.txt "$output_folder"/winbites/winbites_p406_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p406/c2/gt_union.txt "$output_folder"/winbites/winbites_p406_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p410/c1/gt_union.txt "$output_folder"/winbites/winbites_p410_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p410/c2/gt_union.txt "$output_folder"/winbites/winbites_p410_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p411/c1/gt_union.txt "$output_folder"/winbites/winbites_p411_c1.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p411/c2/gt_union.txt "$output_folder"/winbites/winbites_p411_c2.txt >> "$output_folder"/eval_output.txt
./evalbites ./../../Database/p413/c1/gt_union.txt "$output_folder"/winbites/winbites_p413_c1.txt >> "$output_folder"/eval_output.txt




gcc summ.c -o summ

./summ "$output_folder"/eval_output.txt > "$output_folder"/AAA_FINAL_RESULTS.txt



echo "Finished Producing Final Results."





