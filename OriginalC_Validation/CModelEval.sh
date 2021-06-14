
main_folder=$1
cut=$2
stride=$3
model_name_prefix=$4

echo "Beginnning ./bc.sh for all files..."

mkdir "$main_folder"/winbites


./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p005/c1/20120201113500388.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p005_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p005/c2/20120201115556861.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p005_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p006/c1/20120201113340476.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p006_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p006/c2/20120201115638873.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p006_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p007/c1/20120202113525295.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p007_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p008/c1/20120202113615465.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p008_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p009/c1/20120203113936089.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p009_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p010/c1/20120203113910466.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p010_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p011/c1/20120203172356676.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p011_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p011/c2/20120203173621470.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p011_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p012/c1/20120203172506843.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p012_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p012/c2/20120203173709955.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p012_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p013/c1/20120216172953272.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p013_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p014/c1/20120224112851009.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p014_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p015/c1/20120216172952107.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p015_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p016/c1/20120224113538574.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p016_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p016/c2/20120224120131069.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p016_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p017/c1/20120216112726560.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p017_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p017/c2/20120216114901197.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p017_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p018/c1/20120425132756593.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p018_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p018/c2/20120425134340262.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p018_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p019/c1/20120216172954812.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p019_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p019/c2/20120216174956985.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p019_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p020/c1/20120217133348891.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p020_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p021/c1/20120229112544353.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p021_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p021/c2/20120229113844623.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p021_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p022/c1/20120229112954577.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p022_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p023/c1/20120216112438514.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p023_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p024/c1/20120328193110730.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p024_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p024/c2/20120328195721547.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p024_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p025/c1/20120222113110209.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p025_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p026/c1/20120228173848606.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p026_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p026/c2/20120228180550970.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p026_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p026/c3/20120228182216423.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p026_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p027/c1/20120220173452041.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p027_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p027/c2/20120220174516207.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p027_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p027/c3/20120220175903758.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p027_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p028/c1/20120220173438949.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p028_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p028/c2/20120220174622771.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p028_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p029/c1/20120217133350683.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p029_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p030/c1/20120217133551702.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p030_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p031/c1/20120216112730946.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p031_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p033/c1/20120217133617613.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p033_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p034/c1/20120216172955780.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p034_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p034/c2/20120216174456204.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p034_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p034/c3/20120216175456527.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p034_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p035/c1/20120306173256295.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p035_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p035/c2/20120306175649237.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p035_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p036/c1/20120228173931210.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p036_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p036/c2/20120228175944210.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p036_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p037/c1/20120229193027444.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p037_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p037/c2/20120229195222164.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p037_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p038/c1/20120229192826289.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p038_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p039/c1/20120305192859412.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p039_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p040/c1/20120228112659238.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p040_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p042/c1/20120307132620724.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p042_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p042/c2/20120307134735203.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p042_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p043/c1/20120223173131340.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p043_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p044/c1/20120301113052494.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p044_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p045/c1/20120309113007692.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p045_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p045/c2/20120309114930233.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p045_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p045/c3/20120309120424106.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p045_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p046/c1/20120222112903973.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p046_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p047/c1/20120229193514925.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p047_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p047/c2/20120229194923067.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p047_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p048/c1/20120223173312302.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p048_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p050/c1/20120228173840380.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p050_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p051/c1/20120312133047898.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p051_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p051/c2/20120312135400686.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p051_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p052/c1/20120305132652223.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p052_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p052/c2/20120305134427377.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p052_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p053/c1/20120222112849751.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p053_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p054/c1/20120223173032964.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p054_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p054/c2/20120223175008619.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p054_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p055/c1/20120223173113383.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p055_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p055/c2/20120223175116604.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p055_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p056/c1/20120220173416337.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p056_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p056/c2/20120220175219011.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p056_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p057/c1/20120228173854320.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p057_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p057/c2/20120228180429696.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p057_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p057/c3/20120228182142096.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p057_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p058/c1/20120307114016953.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p058_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p059/c1/20120222113118566.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p059_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p060/c1/20120308173058728.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p060_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p060/c2/20120308175445068.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p060_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p060/c3/20120308180957127.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p060_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p061/c1/20120229132508906.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p061_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p061/c2/20120229134017621.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p061_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p061/c3/20120229135231586.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p061_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p062/c1/20120228192849804.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p062_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p062/c2/20120228194428966.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p062_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p064/c1/20120427112555274.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p064_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p064/c2/20120427114455752.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p064_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p065/c1/20120301132559482.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p065_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p065/c2/20120301134453930.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p065_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p066/c1/20120307193503255.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p066_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p066/c2/20120307195309898.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p066_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p066/c3/20120307200547395.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p066_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p067/c1/20120307193322526.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p067_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p067/c2/20120307195313133.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p067_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p068/c1/20120229173159520.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p068_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p068/c2/20120229175105520.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p068_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c1/20120308173059536.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p069_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c2/20120308174319907.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold1.pb > "$main_folder"/winbites/winbites_p069_c2.txt

echo "through First Fold of data..."

./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c3/20120308175742231.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p069_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c4/20120308181130785.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p069_c4.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p070/c1/20120308173013941.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p070_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p070/c2/20120308174600690.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p070_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p070/c3/20120308175752760.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p070_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p071/c1/20120229173212520.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p071_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p071/c2/20120229175025520.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p071_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p072/c1/20120229173253165.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p072_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p074/c1/20120307193427802.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p074_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p074/c2/20120307195714814.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p074_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p075/c1/20120302113119778.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p075_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p077/c1/20120307192942492.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p077_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p077/c2/20120307194821244.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p077_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p077/c3/20120307200304535.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p077_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p078/c1/20120228192946874.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p078_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p078/c2/20120228195038630.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p078_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p079/c1/20120229133150595.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p079_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p079/c2/20120229134617055.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p079_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p080/c1/20120229132958919.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p080_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p080/c2/20120229135139140.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p080_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p081/c1/20120302113751927.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p081_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p082/c1/20120228192901972.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p082_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p082/c2/20120228194225241.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p082_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p083/c1/20120229132844811.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p083_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p083/c2/20120229135015685.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p083_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p084/c1/20120305192105796.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p084_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p084/c2/20120305193334537.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p084_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p085/c1/20120305172115028.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p085_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p086/c1/20120228193646075.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p086_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p087/c1/20120309113349919.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p087_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p087/c2/20120309114401725.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p087_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p088/c1/20120305112416771.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p088_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p088/c2/20120305114328731.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p088_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p089/c1/20120229113001352.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p089_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p090/c1/20120306172744676.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p090_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p090/c2/20120306175105028.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p090_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p091/c1/20120309113140317.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p091_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p092/c1/20120305172343046.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p092_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p093/c1/20120305132548824.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p093_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p093/c2/20120305134113459.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p093_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p095/c1/20120313112930016.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p095_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p096/c1/20120228112632956.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p096_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p098/c1/20120228112415658.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p098_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p098/c2/20120228115029341.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p098_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p099/c1/20120330173521593.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p099_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p099/c2/20120330180137160.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p099_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p100/c1/20120328193205663.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p100_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p101/c1/20120309134613335.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p101_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p101/c2/20120309140953594.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p101_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p102/c1/20120309134618339.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p102_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p102/c2/20120309141101370.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p102_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p103/c1/20120301132547476.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p103_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p103/c2/20120301134238548.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p103_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p104/c1/20120305192707780.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p104_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p105/c1/20120301113600105.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p105_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p106/c1/20120301113532302.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p106_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p107/c1/20120402113141338.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p107_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p107/c2/20120402115016952.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p107_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p108/c1/20120305112836929.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p108_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p108/c2/20120305114852010.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p108_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p109/c1/20120309113304798.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p109_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p109/c2/20120309115424984.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p109_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p110/c1/20120326113246948.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p110_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p111/c1/20120313191823858.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p111_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p111/c2/20120313193321903.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p111_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p111/c3/20120313194638270.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p111_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p113/c1/20120305132612374.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p113_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p113/c2/20120305134259765.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p113_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p114/c1/20120305133008310.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p114_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p114/c2/20120305134348448.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p114_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p115/c1/20120314192820531.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p115_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p115/c2/20120314194028619.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p115_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p115/c3/20120314195217772.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p115_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p116/c1/20120314193158991.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p116_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p116/c2/20120314195110260.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p116_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p116/c3/20120314200033728.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p116_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c1/20120314193456934.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p117_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c2/20120314194708288.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p117_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c3/20120314195744933.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p117_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c4/20120314200530157.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p117_c4.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p118/c1/20120403173343818.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p118_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p118/c2/20120403175241609.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p118_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p119/c1/20120306173048262.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p119_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p119/c2/20120306175109152.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p119_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p120/c1/20120403173344479.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p120_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p120/c2/20120403174722966.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p120_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p121/c1/20120316133630260.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p121_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p121/c2/20120316140923015.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p121_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p122/c1/20120301132928488.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p122_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p122/c2/20120301135344973.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p122_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p123/c1/20120305192217376.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p123_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p123/c2/20120305193623820.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p123_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p125/c1/20120301132607990.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p125_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p125/c2/20120301134825014.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p125_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p129/c1/20120313192119234.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p129_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p129/c2/20120313193650464.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p129_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p130/c1/20120307113650201.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p130_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p131/c1/20120307113501070.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p131_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p132/c1/20120313192418103.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p132_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p132/c2/20120313193633644.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p132_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p133/c1/20120308173005939.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p133_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p134/c1/20120315172811538.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p134_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p134/c2/20120315173934506.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p134_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p134/c3/20120315175511405.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold2.pb > "$main_folder"/winbites/winbites_p134_c3.txt

echo "Through second Fold of Data..."

./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p136/c1/20120305112902897.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p136_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p137/c1/20120313191934294.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p137_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p137/c2/20120313193724203.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p137_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p138/c1/20120315113039876.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p138_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p139/c1/20120307173957461.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p139_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p140/c1/20120307173958843.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p140_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p142/c1/20120313112336564.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p142_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p142/c2/20120313113341665.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p142_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p143/c1/20120330173130674.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p143_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p143/c2/20120330175022551.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p143_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p144/c1/20120402113333595.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p144_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p144/c2/20120402115726456.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p144_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p145/c1/20120402113048929.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p145_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p146/c1/20120312192053882.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p146_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p146/c2/20120312193951835.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p146_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p146/c3/20120312194626539.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p146_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p148/c1/20120307132429449.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p148_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p148/c2/20120307134506379.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p148_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p150/c1/20120307132456101.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p150_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p150/c2/20120307134458360.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p150_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p151/c1/20120307132231281.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p151_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p151/c2/20120307134148964.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p151_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p153/c1/20120312113353867.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p153_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p154/c1/20120312113403956.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p154_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p157/c1/20120308112819443.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p157_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p157/c2/20120308115030731.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p157_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p158/c1/20120308112749664.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p158_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p158/c2/20120308115221156.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p158_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p159/c1/20120308113647725.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p159_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p160/c1/20120315112950061.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p160_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p160/c2/20120315114616600.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p160_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p161/c1/20120312132904377.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p161_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p161/c2/20120312140249951.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p161_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p162/c1/20120330133224229.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p162_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p164/c1/20120307173626037.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p164_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p165/c1/20120316133349066.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p165_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p165/c2/20120316140241245.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p165_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p166/c1/20120312113236284.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p166_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p166/c2/20120312115117158.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p166_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p169/c1/20120315133118291.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p169_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p169/c2/20120315134442935.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p169_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p170/c1/20120409133324028.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p170_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p171/c1/20120308113713521.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p171_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p171/c2/20120308121134470.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p171_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p172/c1/20120312113103653.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p172_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p172/c2/20120312115044471.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p172_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p173/c1/20120315133256708.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p173_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p173/c2/20120315135235408.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p173_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p174/c1/20120312132757848.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p174_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p174/c2/20120312134342108.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p174_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p174/c3/20120312135717947.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p174_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p175/c1/20120315172613113.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p175_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p175/c2/20120315173837577.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p175_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p175/c3/20120315175359529.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p175_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p176/c1/20120328132824062.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p176_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p176/c2/20120328134922106.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p176_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p177/c1/20120316133238284.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p177_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p177/c2/20120316134931699.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p177_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p178/c1/20120315132817101.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p178_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p178/c2/20120315134731448.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p178_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p179/c1/20120315193244966.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p179_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p179/c2/20120315195434744.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p179_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p179/c3/20120315201150952.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p179_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p180/c1/20120409133512987.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p180_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p180/c2/20120409135602563.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p180_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p180/c3/20120409140511815.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p180_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p181/c1/20120327132811002.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p181_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p181/c2/20120327134547579.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p181_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p181/c3/20120327135711632.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p181_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p182/c1/20120330132957083.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p182_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p182/c2/20120330134356469.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p182_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p184/c1/20120327132757916.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p184_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p184/c2/20120327135750694.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p184_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p185/c1/20120326132538885.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p185_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p185/c2/20120326134219425.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p185_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p186/c1/20120326132426970.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p186_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p186/c2/20120326134149710.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p186_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p187/c1/20120315193241484.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p187_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p187/c2/20120315195431777.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p187_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p187/c3/20120315201150919.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p187_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p188/c1/20120330133005854.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p188_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p188/c2/20120330134457689.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p188_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p189/c1/20120406132401423.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p189_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p190/c1/20120326113122974.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p190_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p190/c2/20120326114821013.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p190_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p192/c1/20120406112224390.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p192_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p192/c2/20120406114210862.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p192_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p194/c1/20120425193144311.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p194_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p194/c2/20120425195011259.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p194_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p194/c3/20120425200629560.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p194_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p195/c1/20120330133220787.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p195_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p195/c2/20120330135450621.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p195_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p195/c3/20120330140922388.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p195_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p198/c1/20120329133131746.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p198_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p199/c1/20120329133132745.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p199_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p201/c1/20120403112200043.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p201_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p202/c1/20120327173510273.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p202_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p204/c1/20120330173023080.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p204_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p204/c2/20120330174152512.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p204_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p204/c3/20120330175840815.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p204_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p205/c1/20120326133018088.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p205_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p205/c2/20120326134754917.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p205_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p206/c1/20120403112517787.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p206_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p207/c1/20120327132744923.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold3.pb > "$main_folder"/winbites/winbites_p207_c1.txt
 
echo "Through third fold of data..."

./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p207/c2/20120327134145172.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p207_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p207/c3/20120327135553961.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p207_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p208/c1/20120326132849580.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p208_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p208/c2/20120326134631943.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p208_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p209/c1/20120425192934334.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p209_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p209/c2/20120425194727754.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p209_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p215/c1/20120330173036560.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p215_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p215/c2/20120330174145417.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p215_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p215/c3/20120330175912578.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p215_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p217/c1/20120330112653356.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p217_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p217/c2/20120330114201483.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p217_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p217/c3/20120330115504329.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p217_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c1/20120330112416435.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p218_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c2/20120330113237522.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p218_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c3/20120330114442646.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p218_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c4/20120330115500214.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p218_c4.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p219/c1/20120330112638052.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p219_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p219/c2/20120330115022285.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p219_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p220/c1/20120327173631369.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p220_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p220/c2/20120327180308867.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p220_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p221/c1/20120328133121287.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p221_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p224/c1/20120329113826684.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p224_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p226/c1/20120412114018563.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p226_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p226/c2/20120412120623413.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p226_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p229/c1/20120402133125326.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p229_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p229/c2/20120402135435379.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p229_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p230/c1/20120409113857338.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p230_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p230/c2/20120409115642333.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p230_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p231/c1/20120403173445778.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p231_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p231/c2/20120403180305296.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p231_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p232/c1/20120327113301254.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p232_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p233/c1/20120329113802763.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p233_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p234/c1/20120425173135343.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p234_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p234/c2/20120425174950426.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p234_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p235/c1/20120329113104332.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p235_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p236/c1/20120425132947976.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p236_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p236/c2/20120425134526411.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p236_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p237/c1/20120419132734051.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p237_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p237/c2/20120419133904252.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p237_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p241/c1/20120327173046460.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p241_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p241/c2/20120327175415645.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p241_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p242/c1/20120327113242993.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p242_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p242/c2/20120327115505363.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p242_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p244/c1/20120327113225448.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p244_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p244/c2/20120327115753379.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p244_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p245/c1/20120329113707460.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p245_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p246/c1/20120423112847099.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p246_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p247/c1/20120406112345735.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p247_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p247/c2/20120406114042132.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p247_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p248/c1/20120406112305838.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p248_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p251/c1/20120416172059459.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p251_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p251/c2/20120416174250118.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p251_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p252/c1/20120327173016262.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p252_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p252/c2/20120327175907357.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p252_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p253/c1/20120416172014446.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p253_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p253/c2/20120416174231335.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p253_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p256/c1/20120412133413440.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p256_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p257/c1/20120409113859246.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p257_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p257/c2/20120409120734458.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p257_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p259/c1/20120409193045863.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p259_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p260/c1/20120402113122528.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p260_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p260/c2/20120402114924525.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p260_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p262/c1/20120501132014124.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p262_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p262/c2/20120501133216188.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p262_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p262/c3/20120501135026981.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p262_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p263/c1/20120402133324151.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p263_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p263/c2/20120402135023742.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p263_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p264/c1/20120328132640092.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p264_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p264/c2/20120328135219336.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p264_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p265/c1/20120403192717110.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p265_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p265/c2/20120403194229038.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p265_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p266/c1/20120412113953790.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p266_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p266/c2/20120412120720002.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p266_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p267/c1/20120412114144534.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p267_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p267/c2/20120412120954656.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p267_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p268/c1/20120402133253810.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p268_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p268/c2/20120402135003644.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p268_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p269/c1/20120402133028432.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p269_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p269/c2/20120402135235785.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p269_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c1/20120409133008582.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p270_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c2/20120409134158367.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p270_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c3/20120409135157836.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p270_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c4/20120409140238268.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p270_c4.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c5/20120409141419883.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p270_c5.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p271/c1/20120501132128665.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p271_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p271/c2/20120501133346281.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p271_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p271/c3/20120501134724169.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p271_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p272/c1/20120425172927983.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p272_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p272/c2/20120425174549782.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p272_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p272/c3/20120425175813192.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p272_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p273/c1/20120423132056157.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p273_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p273/c2/20120423133718739.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p273_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p274/c1/20120423112814581.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p274_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p274/c2/20120423114711625.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p274_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p275/c1/20120424172007546.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p275_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p275/c2/20120424173919258.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p275_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p276/c1/20120501132353246.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p276_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p276/c2/20120501134659707.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p276_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p277/c1/20120425132757634.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p277_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p277/c2/20120425134257641.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p277_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p277/c3/20120425135124224.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p277_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p278/c1/20120409173913352.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p278_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p278/c2/20120409175734496.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p278_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p278/c3/20120409182446030.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold4.pb > "$main_folder"/winbites/winbites_p278_c3.txt

echo "Through fourth fold of data..."

./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p279/c1/20120419132417345.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p279_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p279/c2/20120419134413682.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p279_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p279/c3/20120419140148238.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p279_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p280/c1/20120501133044828.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p280_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p280/c2/20120501134957261.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p280_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p281/c1/20120503173112146.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p281_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p281/c2/20120503174552478.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p281_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p281/c3/20120503180551853.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p281_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p282/c1/20120501113549022.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p282_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p283/c1/20120501113224745.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p283_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p284/c1/20120409193516015.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p284_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p285/c1/20120416193405685.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p285_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p285/c2/20120416195946299.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p285_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p289/c1/20120426112910682.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p289_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p289/c2/20120426115246945.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p289_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p290/c1/20120426112928419.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p290_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p290/c2/20120426114727993.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p290_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p291/c1/20120409193744050.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p291_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p291/c2/20120409195902756.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p291_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p292/c1/20120418113345010.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p292_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p292/c2/20120418115806270.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p292_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p293/c1/20120418113301449.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p293_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p293/c2/20120418115514086.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p293_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p297/c1/20120412193716704.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p297_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p297/c2/20120412200020480.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p297_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p298/c1/20120420132007614.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p298_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p298/c2/20120420134236776.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p298_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p309/c1/20120412114007614.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p309_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p309/c2/20120412120826320.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p309_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p311/c1/20120425193058248.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p311_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p311/c2/20120425194312420.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p311_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p311/c3/20120425200320042.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p311_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p312/c1/20120420132549489.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p312_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p312/c2/20120420134925156.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p312_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p315/c1/20120416193500747.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p315_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p315/c2/20120416195907790.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p315_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p318/c1/20120430132551162.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p318_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p320/c1/20120423132004761.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p320_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p320/c2/20120423133602744.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p320_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p322/c1/20120423132021431.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p322_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p322/c2/20120423133545130.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p322_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p322/c3/20120423134524665.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p322_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p324/c1/20120412193525360.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p324_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p324/c2/20120412200004981.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p324_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p326/c1/20120426173157578.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p326_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p326/c2/20120426174731140.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p326_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p329/c1/20120409173643509.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p329_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p329/c2/20120409180115074.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p329_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p329/c3/20120409181747985.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p329_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p331/c1/20120427112541130.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p331_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p331/c2/20120427114812365.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p331_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p332/c1/20120430132405061.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p332_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p332/c2/20120430133808594.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p332_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p332/c3/20120430140159183.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p332_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p334/c1/20120416132900614.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p334_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p334/c2/20120416134902760.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p334_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p336/c1/20120416132753566.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p336_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p336/c2/20120416135139500.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p336_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p337/c1/20120416133214279.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p337_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p337/c2/20120416135928203.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p337_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p338/c1/20120416132910689.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p338_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p338/c2/20120416134653514.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p338_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p341/c1/20120420132317799.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p341_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c1/20120416193133062.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p343_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c2/20120416194326240.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p343_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c3/20120416195541777.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p343_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c4/20120416200726887.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p343_c4.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p347/c1/20120425113150724.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p347_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p352/c1/20120503173200609.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p352_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p352/c2/20120503174819029.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p352_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p352/c3/20120503175729964.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p352_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p353/c1/20120426173138116.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p353_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p353/c2/20120426174936522.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p353_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p353/c3/20120426180518994.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p353_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c1/20120503173010703.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p361_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c2/20120503174027988.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p361_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c3/20120503175557074.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p361_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c4/20120503181058852.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p361_c4.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p368/c1/20120426172925692.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p368_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p368/c2/20120426175116826.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p368_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p368/c3/20120426180605475.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p368_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p372/c1/20120412192501245.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p372_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p372/c2/20120412194533186.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p372_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p377/c1/20120409193538453.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p377_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p384/c1/20120425132619348.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p384_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p384/c2/20120425133951516.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p384_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p392/c1/20120425173136899.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p392_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p392/c2/20120425175143102.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p392_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p396/c1/20120416193547929.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p396_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p396/c2/20120416195759132.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p396_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p396/c3/20120416201129870.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p396_c3.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p397/c1/20120430112732353.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p397_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p397/c2/20120430120341925.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p397_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p401/c1/20120426112913541.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p401_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p401/c2/20120426120300879.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p401_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p406/c1/20120420132054398.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p406_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p406/c2/20120420134246071.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p406_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p410/c1/20120430112620269.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p410_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p410/c2/20120430115210371.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p410_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p411/c1/20120430112628428.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p411_c1.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p411/c2/20120430114948111.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p411_c2.txt
./bc /mnt/c/Users/jpjol/Documents/Research/BiteData/p413/c1/20120418113054001.txt -ws "$cut" -m_name "$main_folder"/"$model_name_prefix"-fold5.pb > "$main_folder"/winbites/winbites_p413_c1.txt

echo "Through fifth fold of data..."

echo "Finished with all bite counts."







./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p005/c1/gt_union.txt "$main_folder"/winbites/winbites_p005_c1.txt > "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p005/c2/gt_union.txt "$main_folder"/winbites/winbites_p005_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p006/c1/gt_union.txt "$main_folder"/winbites/winbites_p006_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p006/c2/gt_union.txt "$main_folder"/winbites/winbites_p006_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p007/c1/gt_union.txt "$main_folder"/winbites/winbites_p007_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p008/c1/gt_union.txt "$main_folder"/winbites/winbites_p008_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p009/c1/gt_union.txt "$main_folder"/winbites/winbites_p009_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p010/c1/gt_union.txt "$main_folder"/winbites/winbites_p010_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p011/c1/gt_union.txt "$main_folder"/winbites/winbites_p011_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p011/c2/gt_union.txt "$main_folder"/winbites/winbites_p011_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p012/c1/gt_union.txt "$main_folder"/winbites/winbites_p012_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p012/c2/gt_union.txt "$main_folder"/winbites/winbites_p012_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p013/c1/gt_union.txt "$main_folder"/winbites/winbites_p013_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p014/c1/gt_union.txt "$main_folder"/winbites/winbites_p014_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p015/c1/gt_union.txt "$main_folder"/winbites/winbites_p015_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p016/c1/gt_union.txt "$main_folder"/winbites/winbites_p016_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p016/c2/gt_union.txt "$main_folder"/winbites/winbites_p016_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p017/c1/gt_union.txt "$main_folder"/winbites/winbites_p017_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p017/c2/gt_union.txt "$main_folder"/winbites/winbites_p017_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p018/c1/gt_union.txt "$main_folder"/winbites/winbites_p018_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p018/c2/gt_union.txt "$main_folder"/winbites/winbites_p018_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p019/c1/gt_union.txt "$main_folder"/winbites/winbites_p019_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p019/c2/gt_union.txt "$main_folder"/winbites/winbites_p019_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p020/c1/gt_union.txt "$main_folder"/winbites/winbites_p020_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p021/c1/gt_union.txt "$main_folder"/winbites/winbites_p021_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p021/c2/gt_union.txt "$main_folder"/winbites/winbites_p021_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p022/c1/gt_union.txt "$main_folder"/winbites/winbites_p022_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p023/c1/gt_union.txt "$main_folder"/winbites/winbites_p023_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p024/c1/gt_union.txt "$main_folder"/winbites/winbites_p024_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p024/c2/gt_union.txt "$main_folder"/winbites/winbites_p024_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p025/c1/gt_union.txt "$main_folder"/winbites/winbites_p025_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p026/c1/gt_union.txt "$main_folder"/winbites/winbites_p026_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p026/c2/gt_union.txt "$main_folder"/winbites/winbites_p026_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p026/c3/gt_union.txt "$main_folder"/winbites/winbites_p026_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p027/c1/gt_union.txt "$main_folder"/winbites/winbites_p027_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p027/c2/gt_union.txt "$main_folder"/winbites/winbites_p027_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p027/c3/gt_union.txt "$main_folder"/winbites/winbites_p027_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p028/c1/gt_union.txt "$main_folder"/winbites/winbites_p028_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p028/c2/gt_union.txt "$main_folder"/winbites/winbites_p028_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p029/c1/gt_union.txt "$main_folder"/winbites/winbites_p029_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p030/c1/gt_union.txt "$main_folder"/winbites/winbites_p030_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p031/c1/gt_union.txt "$main_folder"/winbites/winbites_p031_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p033/c1/gt_union.txt "$main_folder"/winbites/winbites_p033_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p034/c1/gt_union.txt "$main_folder"/winbites/winbites_p034_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p034/c2/gt_union.txt "$main_folder"/winbites/winbites_p034_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p034/c3/gt_union.txt "$main_folder"/winbites/winbites_p034_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p035/c1/gt_union.txt "$main_folder"/winbites/winbites_p035_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p035/c2/gt_union.txt "$main_folder"/winbites/winbites_p035_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p036/c1/gt_union.txt "$main_folder"/winbites/winbites_p036_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p036/c2/gt_union.txt "$main_folder"/winbites/winbites_p036_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p037/c1/gt_union.txt "$main_folder"/winbites/winbites_p037_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p037/c2/gt_union.txt "$main_folder"/winbites/winbites_p037_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p038/c1/gt_union.txt "$main_folder"/winbites/winbites_p038_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p039/c1/gt_union.txt "$main_folder"/winbites/winbites_p039_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p040/c1/gt_union.txt "$main_folder"/winbites/winbites_p040_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p042/c1/gt_union.txt "$main_folder"/winbites/winbites_p042_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p042/c2/gt_union.txt "$main_folder"/winbites/winbites_p042_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p043/c1/gt_union.txt "$main_folder"/winbites/winbites_p043_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p044/c1/gt_union.txt "$main_folder"/winbites/winbites_p044_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p045/c1/gt_union.txt "$main_folder"/winbites/winbites_p045_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p045/c2/gt_union.txt "$main_folder"/winbites/winbites_p045_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p045/c3/gt_union.txt "$main_folder"/winbites/winbites_p045_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p046/c1/gt_union.txt "$main_folder"/winbites/winbites_p046_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p047/c1/gt_union.txt "$main_folder"/winbites/winbites_p047_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p047/c2/gt_union.txt "$main_folder"/winbites/winbites_p047_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p048/c1/gt_union.txt "$main_folder"/winbites/winbites_p048_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p050/c1/gt_union.txt "$main_folder"/winbites/winbites_p050_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p051/c1/gt_union.txt "$main_folder"/winbites/winbites_p051_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p051/c2/gt_union.txt "$main_folder"/winbites/winbites_p051_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p052/c1/gt_union.txt "$main_folder"/winbites/winbites_p052_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p052/c2/gt_union.txt "$main_folder"/winbites/winbites_p052_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p053/c1/gt_union.txt "$main_folder"/winbites/winbites_p053_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p054/c1/gt_union.txt "$main_folder"/winbites/winbites_p054_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p054/c2/gt_union.txt "$main_folder"/winbites/winbites_p054_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p055/c1/gt_union.txt "$main_folder"/winbites/winbites_p055_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p055/c2/gt_union.txt "$main_folder"/winbites/winbites_p055_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p056/c1/gt_union.txt "$main_folder"/winbites/winbites_p056_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p056/c2/gt_union.txt "$main_folder"/winbites/winbites_p056_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p057/c1/gt_union.txt "$main_folder"/winbites/winbites_p057_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p057/c2/gt_union.txt "$main_folder"/winbites/winbites_p057_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p057/c3/gt_union.txt "$main_folder"/winbites/winbites_p057_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p058/c1/gt_union.txt "$main_folder"/winbites/winbites_p058_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p059/c1/gt_union.txt "$main_folder"/winbites/winbites_p059_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p060/c1/gt_union.txt "$main_folder"/winbites/winbites_p060_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p060/c2/gt_union.txt "$main_folder"/winbites/winbites_p060_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p060/c3/gt_union.txt "$main_folder"/winbites/winbites_p060_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p061/c1/gt_union.txt "$main_folder"/winbites/winbites_p061_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p061/c2/gt_union.txt "$main_folder"/winbites/winbites_p061_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p061/c3/gt_union.txt "$main_folder"/winbites/winbites_p061_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p062/c1/gt_union.txt "$main_folder"/winbites/winbites_p062_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p062/c2/gt_union.txt "$main_folder"/winbites/winbites_p062_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p064/c1/gt_union.txt "$main_folder"/winbites/winbites_p064_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p064/c2/gt_union.txt "$main_folder"/winbites/winbites_p064_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p065/c1/gt_union.txt "$main_folder"/winbites/winbites_p065_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p065/c2/gt_union.txt "$main_folder"/winbites/winbites_p065_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p066/c1/gt_union.txt "$main_folder"/winbites/winbites_p066_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p066/c2/gt_union.txt "$main_folder"/winbites/winbites_p066_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p066/c3/gt_union.txt "$main_folder"/winbites/winbites_p066_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p067/c1/gt_union.txt "$main_folder"/winbites/winbites_p067_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p067/c2/gt_union.txt "$main_folder"/winbites/winbites_p067_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p068/c1/gt_union.txt "$main_folder"/winbites/winbites_p068_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p068/c2/gt_union.txt "$main_folder"/winbites/winbites_p068_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c1/gt_union.txt "$main_folder"/winbites/winbites_p069_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c2/gt_union.txt "$main_folder"/winbites/winbites_p069_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c3/gt_union.txt "$main_folder"/winbites/winbites_p069_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p069/c4/gt_union.txt "$main_folder"/winbites/winbites_p069_c4.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p070/c1/gt_union.txt "$main_folder"/winbites/winbites_p070_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p070/c2/gt_union.txt "$main_folder"/winbites/winbites_p070_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p070/c3/gt_union.txt "$main_folder"/winbites/winbites_p070_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p071/c1/gt_union.txt "$main_folder"/winbites/winbites_p071_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p071/c2/gt_union.txt "$main_folder"/winbites/winbites_p071_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p072/c1/gt_union.txt "$main_folder"/winbites/winbites_p072_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p074/c1/gt_union.txt "$main_folder"/winbites/winbites_p074_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p074/c2/gt_union.txt "$main_folder"/winbites/winbites_p074_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p075/c1/gt_union.txt "$main_folder"/winbites/winbites_p075_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p077/c1/gt_union.txt "$main_folder"/winbites/winbites_p077_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p077/c2/gt_union.txt "$main_folder"/winbites/winbites_p077_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p077/c3/gt_union.txt "$main_folder"/winbites/winbites_p077_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p078/c1/gt_union.txt "$main_folder"/winbites/winbites_p078_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p078/c2/gt_union.txt "$main_folder"/winbites/winbites_p078_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p079/c1/gt_union.txt "$main_folder"/winbites/winbites_p079_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p079/c2/gt_union.txt "$main_folder"/winbites/winbites_p079_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p080/c1/gt_union.txt "$main_folder"/winbites/winbites_p080_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p080/c2/gt_union.txt "$main_folder"/winbites/winbites_p080_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p081/c1/gt_union.txt "$main_folder"/winbites/winbites_p081_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p082/c1/gt_union.txt "$main_folder"/winbites/winbites_p082_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p082/c2/gt_union.txt "$main_folder"/winbites/winbites_p082_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p083/c1/gt_union.txt "$main_folder"/winbites/winbites_p083_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p083/c2/gt_union.txt "$main_folder"/winbites/winbites_p083_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p084/c1/gt_union.txt "$main_folder"/winbites/winbites_p084_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p084/c2/gt_union.txt "$main_folder"/winbites/winbites_p084_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p085/c1/gt_union.txt "$main_folder"/winbites/winbites_p085_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p086/c1/gt_union.txt "$main_folder"/winbites/winbites_p086_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p087/c1/gt_union.txt "$main_folder"/winbites/winbites_p087_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p087/c2/gt_union.txt "$main_folder"/winbites/winbites_p087_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p088/c1/gt_union.txt "$main_folder"/winbites/winbites_p088_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p088/c2/gt_union.txt "$main_folder"/winbites/winbites_p088_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p089/c1/gt_union.txt "$main_folder"/winbites/winbites_p089_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p090/c1/gt_union.txt "$main_folder"/winbites/winbites_p090_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p090/c2/gt_union.txt "$main_folder"/winbites/winbites_p090_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p091/c1/gt_union.txt "$main_folder"/winbites/winbites_p091_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p092/c1/gt_union.txt "$main_folder"/winbites/winbites_p092_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p093/c1/gt_union.txt "$main_folder"/winbites/winbites_p093_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p093/c2/gt_union.txt "$main_folder"/winbites/winbites_p093_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p095/c1/gt_union.txt "$main_folder"/winbites/winbites_p095_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p096/c1/gt_union.txt "$main_folder"/winbites/winbites_p096_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p098/c1/gt_union.txt "$main_folder"/winbites/winbites_p098_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p098/c2/gt_union.txt "$main_folder"/winbites/winbites_p098_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p099/c1/gt_union.txt "$main_folder"/winbites/winbites_p099_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p099/c2/gt_union.txt "$main_folder"/winbites/winbites_p099_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p100/c1/gt_union.txt "$main_folder"/winbites/winbites_p100_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p101/c1/gt_union.txt "$main_folder"/winbites/winbites_p101_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p101/c2/gt_union.txt "$main_folder"/winbites/winbites_p101_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p102/c1/gt_union.txt "$main_folder"/winbites/winbites_p102_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p102/c2/gt_union.txt "$main_folder"/winbites/winbites_p102_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p103/c1/gt_union.txt "$main_folder"/winbites/winbites_p103_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p103/c2/gt_union.txt "$main_folder"/winbites/winbites_p103_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p104/c1/gt_union.txt "$main_folder"/winbites/winbites_p104_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p105/c1/gt_union.txt "$main_folder"/winbites/winbites_p105_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p106/c1/gt_union.txt "$main_folder"/winbites/winbites_p106_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p107/c1/gt_union.txt "$main_folder"/winbites/winbites_p107_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p107/c2/gt_union.txt "$main_folder"/winbites/winbites_p107_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p108/c1/gt_union.txt "$main_folder"/winbites/winbites_p108_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p108/c2/gt_union.txt "$main_folder"/winbites/winbites_p108_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p109/c1/gt_union.txt "$main_folder"/winbites/winbites_p109_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p109/c2/gt_union.txt "$main_folder"/winbites/winbites_p109_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p110/c1/gt_union.txt "$main_folder"/winbites/winbites_p110_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p111/c1/gt_union.txt "$main_folder"/winbites/winbites_p111_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p111/c2/gt_union.txt "$main_folder"/winbites/winbites_p111_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p111/c3/gt_union.txt "$main_folder"/winbites/winbites_p111_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p113/c1/gt_union.txt "$main_folder"/winbites/winbites_p113_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p113/c2/gt_union.txt "$main_folder"/winbites/winbites_p113_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p114/c1/gt_union.txt "$main_folder"/winbites/winbites_p114_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p114/c2/gt_union.txt "$main_folder"/winbites/winbites_p114_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p115/c1/gt_union.txt "$main_folder"/winbites/winbites_p115_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p115/c2/gt_union.txt "$main_folder"/winbites/winbites_p115_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p115/c3/gt_union.txt "$main_folder"/winbites/winbites_p115_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p116/c1/gt_union.txt "$main_folder"/winbites/winbites_p116_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p116/c2/gt_union.txt "$main_folder"/winbites/winbites_p116_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p116/c3/gt_union.txt "$main_folder"/winbites/winbites_p116_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c1/gt_union.txt "$main_folder"/winbites/winbites_p117_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c2/gt_union.txt "$main_folder"/winbites/winbites_p117_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c3/gt_union.txt "$main_folder"/winbites/winbites_p117_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p117/c4/gt_union.txt "$main_folder"/winbites/winbites_p117_c4.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p118/c1/gt_union.txt "$main_folder"/winbites/winbites_p118_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p118/c2/gt_union.txt "$main_folder"/winbites/winbites_p118_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p119/c1/gt_union.txt "$main_folder"/winbites/winbites_p119_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p119/c2/gt_union.txt "$main_folder"/winbites/winbites_p119_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p120/c1/gt_union.txt "$main_folder"/winbites/winbites_p120_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p120/c2/gt_union.txt "$main_folder"/winbites/winbites_p120_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p121/c1/gt_union.txt "$main_folder"/winbites/winbites_p121_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p121/c2/gt_union.txt "$main_folder"/winbites/winbites_p121_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p122/c1/gt_union.txt "$main_folder"/winbites/winbites_p122_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p122/c2/gt_union.txt "$main_folder"/winbites/winbites_p122_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p123/c1/gt_union.txt "$main_folder"/winbites/winbites_p123_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p123/c2/gt_union.txt "$main_folder"/winbites/winbites_p123_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p125/c1/gt_union.txt "$main_folder"/winbites/winbites_p125_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p125/c2/gt_union.txt "$main_folder"/winbites/winbites_p125_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p129/c1/gt_union.txt "$main_folder"/winbites/winbites_p129_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p129/c2/gt_union.txt "$main_folder"/winbites/winbites_p129_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p130/c1/gt_union.txt "$main_folder"/winbites/winbites_p130_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p131/c1/gt_union.txt "$main_folder"/winbites/winbites_p131_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p132/c1/gt_union.txt "$main_folder"/winbites/winbites_p132_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p132/c2/gt_union.txt "$main_folder"/winbites/winbites_p132_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p133/c1/gt_union.txt "$main_folder"/winbites/winbites_p133_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p134/c1/gt_union.txt "$main_folder"/winbites/winbites_p134_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p134/c2/gt_union.txt "$main_folder"/winbites/winbites_p134_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p134/c3/gt_union.txt "$main_folder"/winbites/winbites_p134_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p136/c1/gt_union.txt "$main_folder"/winbites/winbites_p136_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p137/c1/gt_union.txt "$main_folder"/winbites/winbites_p137_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p137/c2/gt_union.txt "$main_folder"/winbites/winbites_p137_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p138/c1/gt_union.txt "$main_folder"/winbites/winbites_p138_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p139/c1/gt_union.txt "$main_folder"/winbites/winbites_p139_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p140/c1/gt_union.txt "$main_folder"/winbites/winbites_p140_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p142/c1/gt_union.txt "$main_folder"/winbites/winbites_p142_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p142/c2/gt_union.txt "$main_folder"/winbites/winbites_p142_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p143/c1/gt_union.txt "$main_folder"/winbites/winbites_p143_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p143/c2/gt_union.txt "$main_folder"/winbites/winbites_p143_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p144/c1/gt_union.txt "$main_folder"/winbites/winbites_p144_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p144/c2/gt_union.txt "$main_folder"/winbites/winbites_p144_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p145/c1/gt_union.txt "$main_folder"/winbites/winbites_p145_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p146/c1/gt_union.txt "$main_folder"/winbites/winbites_p146_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p146/c2/gt_union.txt "$main_folder"/winbites/winbites_p146_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p146/c3/gt_union.txt "$main_folder"/winbites/winbites_p146_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p148/c1/gt_union.txt "$main_folder"/winbites/winbites_p148_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p148/c2/gt_union.txt "$main_folder"/winbites/winbites_p148_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p150/c1/gt_union.txt "$main_folder"/winbites/winbites_p150_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p150/c2/gt_union.txt "$main_folder"/winbites/winbites_p150_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p151/c1/gt_union.txt "$main_folder"/winbites/winbites_p151_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p151/c2/gt_union.txt "$main_folder"/winbites/winbites_p151_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p153/c1/gt_union.txt "$main_folder"/winbites/winbites_p153_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p154/c1/gt_union.txt "$main_folder"/winbites/winbites_p154_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p157/c1/gt_union.txt "$main_folder"/winbites/winbites_p157_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p157/c2/gt_union.txt "$main_folder"/winbites/winbites_p157_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p158/c1/gt_union.txt "$main_folder"/winbites/winbites_p158_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p158/c2/gt_union.txt "$main_folder"/winbites/winbites_p158_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p159/c1/gt_union.txt "$main_folder"/winbites/winbites_p159_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p160/c1/gt_union.txt "$main_folder"/winbites/winbites_p160_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p160/c2/gt_union.txt "$main_folder"/winbites/winbites_p160_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p161/c1/gt_union.txt "$main_folder"/winbites/winbites_p161_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p161/c2/gt_union.txt "$main_folder"/winbites/winbites_p161_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p162/c1/gt_union.txt "$main_folder"/winbites/winbites_p162_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p164/c1/gt_union.txt "$main_folder"/winbites/winbites_p164_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p165/c1/gt_union.txt "$main_folder"/winbites/winbites_p165_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p165/c2/gt_union.txt "$main_folder"/winbites/winbites_p165_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p166/c1/gt_union.txt "$main_folder"/winbites/winbites_p166_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p166/c2/gt_union.txt "$main_folder"/winbites/winbites_p166_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p169/c1/gt_union.txt "$main_folder"/winbites/winbites_p169_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p169/c2/gt_union.txt "$main_folder"/winbites/winbites_p169_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p170/c1/gt_union.txt "$main_folder"/winbites/winbites_p170_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p171/c1/gt_union.txt "$main_folder"/winbites/winbites_p171_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p171/c2/gt_union.txt "$main_folder"/winbites/winbites_p171_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p172/c1/gt_union.txt "$main_folder"/winbites/winbites_p172_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p172/c2/gt_union.txt "$main_folder"/winbites/winbites_p172_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p173/c1/gt_union.txt "$main_folder"/winbites/winbites_p173_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p173/c2/gt_union.txt "$main_folder"/winbites/winbites_p173_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p174/c1/gt_union.txt "$main_folder"/winbites/winbites_p174_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p174/c2/gt_union.txt "$main_folder"/winbites/winbites_p174_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p174/c3/gt_union.txt "$main_folder"/winbites/winbites_p174_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p175/c1/gt_union.txt "$main_folder"/winbites/winbites_p175_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p175/c2/gt_union.txt "$main_folder"/winbites/winbites_p175_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p175/c3/gt_union.txt "$main_folder"/winbites/winbites_p175_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p176/c1/gt_union.txt "$main_folder"/winbites/winbites_p176_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p176/c2/gt_union.txt "$main_folder"/winbites/winbites_p176_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p177/c1/gt_union.txt "$main_folder"/winbites/winbites_p177_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p177/c2/gt_union.txt "$main_folder"/winbites/winbites_p177_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p178/c1/gt_union.txt "$main_folder"/winbites/winbites_p178_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p178/c2/gt_union.txt "$main_folder"/winbites/winbites_p178_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p179/c1/gt_union.txt "$main_folder"/winbites/winbites_p179_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p179/c2/gt_union.txt "$main_folder"/winbites/winbites_p179_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p179/c3/gt_union.txt "$main_folder"/winbites/winbites_p179_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p180/c1/gt_union.txt "$main_folder"/winbites/winbites_p180_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p180/c2/gt_union.txt "$main_folder"/winbites/winbites_p180_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p180/c3/gt_union.txt "$main_folder"/winbites/winbites_p180_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p181/c1/gt_union.txt "$main_folder"/winbites/winbites_p181_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p181/c2/gt_union.txt "$main_folder"/winbites/winbites_p181_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p181/c3/gt_union.txt "$main_folder"/winbites/winbites_p181_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p182/c1/gt_union.txt "$main_folder"/winbites/winbites_p182_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p182/c2/gt_union.txt "$main_folder"/winbites/winbites_p182_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p184/c1/gt_union.txt "$main_folder"/winbites/winbites_p184_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p184/c2/gt_union.txt "$main_folder"/winbites/winbites_p184_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p185/c1/gt_union.txt "$main_folder"/winbites/winbites_p185_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p185/c2/gt_union.txt "$main_folder"/winbites/winbites_p185_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p186/c1/gt_union.txt "$main_folder"/winbites/winbites_p186_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p186/c2/gt_union.txt "$main_folder"/winbites/winbites_p186_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p187/c1/gt_union.txt "$main_folder"/winbites/winbites_p187_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p187/c2/gt_union.txt "$main_folder"/winbites/winbites_p187_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p187/c3/gt_union.txt "$main_folder"/winbites/winbites_p187_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p188/c1/gt_union.txt "$main_folder"/winbites/winbites_p188_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p188/c2/gt_union.txt "$main_folder"/winbites/winbites_p188_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p189/c1/gt_union.txt "$main_folder"/winbites/winbites_p189_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p190/c1/gt_union.txt "$main_folder"/winbites/winbites_p190_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p190/c2/gt_union.txt "$main_folder"/winbites/winbites_p190_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p192/c1/gt_union.txt "$main_folder"/winbites/winbites_p192_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p192/c2/gt_union.txt "$main_folder"/winbites/winbites_p192_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p194/c1/gt_union.txt "$main_folder"/winbites/winbites_p194_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p194/c2/gt_union.txt "$main_folder"/winbites/winbites_p194_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p194/c3/gt_union.txt "$main_folder"/winbites/winbites_p194_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p195/c1/gt_union.txt "$main_folder"/winbites/winbites_p195_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p195/c2/gt_union.txt "$main_folder"/winbites/winbites_p195_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p195/c3/gt_union.txt "$main_folder"/winbites/winbites_p195_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p198/c1/gt_union.txt "$main_folder"/winbites/winbites_p198_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p199/c1/gt_union.txt "$main_folder"/winbites/winbites_p199_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p201/c1/gt_union.txt "$main_folder"/winbites/winbites_p201_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p202/c1/gt_union.txt "$main_folder"/winbites/winbites_p202_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p204/c1/gt_union.txt "$main_folder"/winbites/winbites_p204_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p204/c2/gt_union.txt "$main_folder"/winbites/winbites_p204_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p204/c3/gt_union.txt "$main_folder"/winbites/winbites_p204_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p205/c1/gt_union.txt "$main_folder"/winbites/winbites_p205_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p205/c2/gt_union.txt "$main_folder"/winbites/winbites_p205_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p206/c1/gt_union.txt "$main_folder"/winbites/winbites_p206_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p207/c1/gt_union.txt "$main_folder"/winbites/winbites_p207_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p207/c2/gt_union.txt "$main_folder"/winbites/winbites_p207_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p207/c3/gt_union.txt "$main_folder"/winbites/winbites_p207_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p208/c1/gt_union.txt "$main_folder"/winbites/winbites_p208_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p208/c2/gt_union.txt "$main_folder"/winbites/winbites_p208_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p209/c1/gt_union.txt "$main_folder"/winbites/winbites_p209_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p209/c2/gt_union.txt "$main_folder"/winbites/winbites_p209_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p215/c1/gt_union.txt "$main_folder"/winbites/winbites_p215_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p215/c2/gt_union.txt "$main_folder"/winbites/winbites_p215_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p215/c3/gt_union.txt "$main_folder"/winbites/winbites_p215_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p217/c1/gt_union.txt "$main_folder"/winbites/winbites_p217_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p217/c2/gt_union.txt "$main_folder"/winbites/winbites_p217_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p217/c3/gt_union.txt "$main_folder"/winbites/winbites_p217_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c1/gt_union.txt "$main_folder"/winbites/winbites_p218_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c2/gt_union.txt "$main_folder"/winbites/winbites_p218_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c3/gt_union.txt "$main_folder"/winbites/winbites_p218_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p218/c4/gt_union.txt "$main_folder"/winbites/winbites_p218_c4.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p219/c1/gt_union.txt "$main_folder"/winbites/winbites_p219_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p219/c2/gt_union.txt "$main_folder"/winbites/winbites_p219_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p220/c1/gt_union.txt "$main_folder"/winbites/winbites_p220_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p220/c2/gt_union.txt "$main_folder"/winbites/winbites_p220_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p221/c1/gt_union.txt "$main_folder"/winbites/winbites_p221_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p224/c1/gt_union.txt "$main_folder"/winbites/winbites_p224_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p226/c1/gt_union.txt "$main_folder"/winbites/winbites_p226_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p226/c2/gt_union.txt "$main_folder"/winbites/winbites_p226_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p229/c1/gt_union.txt "$main_folder"/winbites/winbites_p229_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p229/c2/gt_union.txt "$main_folder"/winbites/winbites_p229_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p230/c1/gt_union.txt "$main_folder"/winbites/winbites_p230_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p230/c2/gt_union.txt "$main_folder"/winbites/winbites_p230_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p231/c1/gt_union.txt "$main_folder"/winbites/winbites_p231_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p231/c2/gt_union.txt "$main_folder"/winbites/winbites_p231_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p232/c1/gt_union.txt "$main_folder"/winbites/winbites_p232_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p233/c1/gt_union.txt "$main_folder"/winbites/winbites_p233_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p234/c1/gt_union.txt "$main_folder"/winbites/winbites_p234_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p234/c2/gt_union.txt "$main_folder"/winbites/winbites_p234_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p235/c1/gt_union.txt "$main_folder"/winbites/winbites_p235_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p236/c1/gt_union.txt "$main_folder"/winbites/winbites_p236_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p236/c2/gt_union.txt "$main_folder"/winbites/winbites_p236_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p237/c1/gt_union.txt "$main_folder"/winbites/winbites_p237_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p237/c2/gt_union.txt "$main_folder"/winbites/winbites_p237_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p241/c1/gt_union.txt "$main_folder"/winbites/winbites_p241_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p241/c2/gt_union.txt "$main_folder"/winbites/winbites_p241_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p242/c1/gt_union.txt "$main_folder"/winbites/winbites_p242_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p242/c2/gt_union.txt "$main_folder"/winbites/winbites_p242_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p244/c1/gt_union.txt "$main_folder"/winbites/winbites_p244_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p244/c2/gt_union.txt "$main_folder"/winbites/winbites_p244_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p245/c1/gt_union.txt "$main_folder"/winbites/winbites_p245_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p246/c1/gt_union.txt "$main_folder"/winbites/winbites_p246_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p247/c1/gt_union.txt "$main_folder"/winbites/winbites_p247_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p247/c2/gt_union.txt "$main_folder"/winbites/winbites_p247_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p248/c1/gt_union.txt "$main_folder"/winbites/winbites_p248_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p251/c1/gt_union.txt "$main_folder"/winbites/winbites_p251_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p251/c2/gt_union.txt "$main_folder"/winbites/winbites_p251_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p252/c1/gt_union.txt "$main_folder"/winbites/winbites_p252_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p252/c2/gt_union.txt "$main_folder"/winbites/winbites_p252_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p253/c1/gt_union.txt "$main_folder"/winbites/winbites_p253_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p253/c2/gt_union.txt "$main_folder"/winbites/winbites_p253_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p256/c1/gt_union.txt "$main_folder"/winbites/winbites_p256_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p257/c1/gt_union.txt "$main_folder"/winbites/winbites_p257_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p257/c2/gt_union.txt "$main_folder"/winbites/winbites_p257_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p259/c1/gt_union.txt "$main_folder"/winbites/winbites_p259_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p260/c1/gt_union.txt "$main_folder"/winbites/winbites_p260_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p260/c2/gt_union.txt "$main_folder"/winbites/winbites_p260_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p262/c1/gt_union.txt "$main_folder"/winbites/winbites_p262_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p262/c2/gt_union.txt "$main_folder"/winbites/winbites_p262_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p262/c3/gt_union.txt "$main_folder"/winbites/winbites_p262_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p263/c1/gt_union.txt "$main_folder"/winbites/winbites_p263_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p263/c2/gt_union.txt "$main_folder"/winbites/winbites_p263_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p264/c1/gt_union.txt "$main_folder"/winbites/winbites_p264_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p264/c2/gt_union.txt "$main_folder"/winbites/winbites_p264_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p265/c1/gt_union.txt "$main_folder"/winbites/winbites_p265_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p265/c2/gt_union.txt "$main_folder"/winbites/winbites_p265_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p266/c1/gt_union.txt "$main_folder"/winbites/winbites_p266_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p266/c2/gt_union.txt "$main_folder"/winbites/winbites_p266_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p267/c1/gt_union.txt "$main_folder"/winbites/winbites_p267_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p267/c2/gt_union.txt "$main_folder"/winbites/winbites_p267_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p268/c1/gt_union.txt "$main_folder"/winbites/winbites_p268_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p268/c2/gt_union.txt "$main_folder"/winbites/winbites_p268_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p269/c1/gt_union.txt "$main_folder"/winbites/winbites_p269_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p269/c2/gt_union.txt "$main_folder"/winbites/winbites_p269_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c1/gt_union.txt "$main_folder"/winbites/winbites_p270_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c2/gt_union.txt "$main_folder"/winbites/winbites_p270_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c3/gt_union.txt "$main_folder"/winbites/winbites_p270_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c4/gt_union.txt "$main_folder"/winbites/winbites_p270_c4.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p270/c5/gt_union.txt "$main_folder"/winbites/winbites_p270_c5.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p271/c1/gt_union.txt "$main_folder"/winbites/winbites_p271_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p271/c2/gt_union.txt "$main_folder"/winbites/winbites_p271_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p271/c3/gt_union.txt "$main_folder"/winbites/winbites_p271_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p272/c1/gt_union.txt "$main_folder"/winbites/winbites_p272_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p272/c2/gt_union.txt "$main_folder"/winbites/winbites_p272_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p272/c3/gt_union.txt "$main_folder"/winbites/winbites_p272_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p273/c1/gt_union.txt "$main_folder"/winbites/winbites_p273_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p273/c2/gt_union.txt "$main_folder"/winbites/winbites_p273_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p274/c1/gt_union.txt "$main_folder"/winbites/winbites_p274_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p274/c2/gt_union.txt "$main_folder"/winbites/winbites_p274_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p275/c1/gt_union.txt "$main_folder"/winbites/winbites_p275_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p275/c2/gt_union.txt "$main_folder"/winbites/winbites_p275_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p276/c1/gt_union.txt "$main_folder"/winbites/winbites_p276_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p276/c2/gt_union.txt "$main_folder"/winbites/winbites_p276_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p277/c1/gt_union.txt "$main_folder"/winbites/winbites_p277_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p277/c2/gt_union.txt "$main_folder"/winbites/winbites_p277_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p277/c3/gt_union.txt "$main_folder"/winbites/winbites_p277_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p278/c1/gt_union.txt "$main_folder"/winbites/winbites_p278_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p278/c2/gt_union.txt "$main_folder"/winbites/winbites_p278_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p278/c3/gt_union.txt "$main_folder"/winbites/winbites_p278_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p279/c1/gt_union.txt "$main_folder"/winbites/winbites_p279_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p279/c2/gt_union.txt "$main_folder"/winbites/winbites_p279_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p279/c3/gt_union.txt "$main_folder"/winbites/winbites_p279_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p280/c1/gt_union.txt "$main_folder"/winbites/winbites_p280_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p280/c2/gt_union.txt "$main_folder"/winbites/winbites_p280_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p281/c1/gt_union.txt "$main_folder"/winbites/winbites_p281_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p281/c2/gt_union.txt "$main_folder"/winbites/winbites_p281_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p281/c3/gt_union.txt "$main_folder"/winbites/winbites_p281_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p282/c1/gt_union.txt "$main_folder"/winbites/winbites_p282_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p283/c1/gt_union.txt "$main_folder"/winbites/winbites_p283_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p284/c1/gt_union.txt "$main_folder"/winbites/winbites_p284_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p285/c1/gt_union.txt "$main_folder"/winbites/winbites_p285_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p285/c2/gt_union.txt "$main_folder"/winbites/winbites_p285_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p289/c1/gt_union.txt "$main_folder"/winbites/winbites_p289_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p289/c2/gt_union.txt "$main_folder"/winbites/winbites_p289_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p290/c1/gt_union.txt "$main_folder"/winbites/winbites_p290_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p290/c2/gt_union.txt "$main_folder"/winbites/winbites_p290_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p291/c1/gt_union.txt "$main_folder"/winbites/winbites_p291_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p291/c2/gt_union.txt "$main_folder"/winbites/winbites_p291_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p292/c1/gt_union.txt "$main_folder"/winbites/winbites_p292_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p292/c2/gt_union.txt "$main_folder"/winbites/winbites_p292_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p293/c1/gt_union.txt "$main_folder"/winbites/winbites_p293_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p293/c2/gt_union.txt "$main_folder"/winbites/winbites_p293_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p297/c1/gt_union.txt "$main_folder"/winbites/winbites_p297_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p297/c2/gt_union.txt "$main_folder"/winbites/winbites_p297_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p298/c1/gt_union.txt "$main_folder"/winbites/winbites_p298_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p298/c2/gt_union.txt "$main_folder"/winbites/winbites_p298_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p309/c1/gt_union.txt "$main_folder"/winbites/winbites_p309_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p309/c2/gt_union.txt "$main_folder"/winbites/winbites_p309_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p311/c1/gt_union.txt "$main_folder"/winbites/winbites_p311_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p311/c2/gt_union.txt "$main_folder"/winbites/winbites_p311_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p311/c3/gt_union.txt "$main_folder"/winbites/winbites_p311_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p312/c1/gt_union.txt "$main_folder"/winbites/winbites_p312_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p312/c2/gt_union.txt "$main_folder"/winbites/winbites_p312_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p315/c1/gt_union.txt "$main_folder"/winbites/winbites_p315_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p315/c2/gt_union.txt "$main_folder"/winbites/winbites_p315_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p318/c1/gt_union.txt "$main_folder"/winbites/winbites_p318_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p320/c1/gt_union.txt "$main_folder"/winbites/winbites_p320_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p320/c2/gt_union.txt "$main_folder"/winbites/winbites_p320_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p322/c1/gt_union.txt "$main_folder"/winbites/winbites_p322_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p322/c2/gt_union.txt "$main_folder"/winbites/winbites_p322_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p322/c3/gt_union.txt "$main_folder"/winbites/winbites_p322_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p324/c1/gt_union.txt "$main_folder"/winbites/winbites_p324_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p324/c2/gt_union.txt "$main_folder"/winbites/winbites_p324_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p326/c1/gt_union.txt "$main_folder"/winbites/winbites_p326_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p326/c2/gt_union.txt "$main_folder"/winbites/winbites_p326_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p329/c1/gt_union.txt "$main_folder"/winbites/winbites_p329_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p329/c2/gt_union.txt "$main_folder"/winbites/winbites_p329_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p329/c3/gt_union.txt "$main_folder"/winbites/winbites_p329_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p331/c1/gt_union.txt "$main_folder"/winbites/winbites_p331_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p331/c2/gt_union.txt "$main_folder"/winbites/winbites_p331_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p332/c1/gt_union.txt "$main_folder"/winbites/winbites_p332_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p332/c2/gt_union.txt "$main_folder"/winbites/winbites_p332_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p332/c3/gt_union.txt "$main_folder"/winbites/winbites_p332_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p334/c1/gt_union.txt "$main_folder"/winbites/winbites_p334_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p334/c2/gt_union.txt "$main_folder"/winbites/winbites_p334_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p336/c1/gt_union.txt "$main_folder"/winbites/winbites_p336_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p336/c2/gt_union.txt "$main_folder"/winbites/winbites_p336_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p337/c1/gt_union.txt "$main_folder"/winbites/winbites_p337_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p337/c2/gt_union.txt "$main_folder"/winbites/winbites_p337_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p338/c1/gt_union.txt "$main_folder"/winbites/winbites_p338_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p338/c2/gt_union.txt "$main_folder"/winbites/winbites_p338_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p341/c1/gt_union.txt "$main_folder"/winbites/winbites_p341_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c1/gt_union.txt "$main_folder"/winbites/winbites_p343_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c2/gt_union.txt "$main_folder"/winbites/winbites_p343_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c3/gt_union.txt "$main_folder"/winbites/winbites_p343_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p343/c4/gt_union.txt "$main_folder"/winbites/winbites_p343_c4.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p347/c1/gt_union.txt "$main_folder"/winbites/winbites_p347_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p352/c1/gt_union.txt "$main_folder"/winbites/winbites_p352_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p352/c2/gt_union.txt "$main_folder"/winbites/winbites_p352_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p352/c3/gt_union.txt "$main_folder"/winbites/winbites_p352_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p353/c1/gt_union.txt "$main_folder"/winbites/winbites_p353_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p353/c2/gt_union.txt "$main_folder"/winbites/winbites_p353_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p353/c3/gt_union.txt "$main_folder"/winbites/winbites_p353_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c1/gt_union.txt "$main_folder"/winbites/winbites_p361_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c2/gt_union.txt "$main_folder"/winbites/winbites_p361_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c3/gt_union.txt "$main_folder"/winbites/winbites_p361_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p361/c4/gt_union.txt "$main_folder"/winbites/winbites_p361_c4.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p368/c1/gt_union.txt "$main_folder"/winbites/winbites_p368_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p368/c2/gt_union.txt "$main_folder"/winbites/winbites_p368_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p368/c3/gt_union.txt "$main_folder"/winbites/winbites_p368_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p372/c1/gt_union.txt "$main_folder"/winbites/winbites_p372_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p372/c2/gt_union.txt "$main_folder"/winbites/winbites_p372_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p377/c1/gt_union.txt "$main_folder"/winbites/winbites_p377_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p384/c1/gt_union.txt "$main_folder"/winbites/winbites_p384_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p384/c2/gt_union.txt "$main_folder"/winbites/winbites_p384_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p392/c1/gt_union.txt "$main_folder"/winbites/winbites_p392_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p392/c2/gt_union.txt "$main_folder"/winbites/winbites_p392_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p396/c1/gt_union.txt "$main_folder"/winbites/winbites_p396_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p396/c2/gt_union.txt "$main_folder"/winbites/winbites_p396_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p396/c3/gt_union.txt "$main_folder"/winbites/winbites_p396_c3.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p397/c1/gt_union.txt "$main_folder"/winbites/winbites_p397_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p397/c2/gt_union.txt "$main_folder"/winbites/winbites_p397_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p401/c1/gt_union.txt "$main_folder"/winbites/winbites_p401_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p401/c2/gt_union.txt "$main_folder"/winbites/winbites_p401_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p406/c1/gt_union.txt "$main_folder"/winbites/winbites_p406_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p406/c2/gt_union.txt "$main_folder"/winbites/winbites_p406_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p410/c1/gt_union.txt "$main_folder"/winbites/winbites_p410_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p410/c2/gt_union.txt "$main_folder"/winbites/winbites_p410_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p411/c1/gt_union.txt "$main_folder"/winbites/winbites_p411_c1.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p411/c2/gt_union.txt "$main_folder"/winbites/winbites_p411_c2.txt >> "$main_folder"/all_eval_output.txt
./evalbites /mnt/c/Users/jpjol/Documents/Research/BiteData/p413/c1/gt_union.txt "$main_folder"/winbites/winbites_p413_c1.txt >> "$main_folder"/all_eval_output.txt


./summ "$main_folder"/all_eval_output.txt > "$main_folder"/AAA_FINAL_RESULTS.txt