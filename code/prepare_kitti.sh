

sed -i -E "s/background/0/" *.txt
sed -i -E "s/DontCare/9/" *.txt
sed -i -E "s/Car/1/" *.txt
sed -i -E "s/Van/2/" *.txt
sed -i -E "s/Truck/3/" *.txt
sed -i -E "s/Pedestrian/4/" *.txt
sed -i -E "s/Person_sitting/5/" *.txt
sed -i -E "s/Cyclist/6/" *.txt
sed -i -E "s/Tram/7/" *.txt
sed -i -E "s/Misc/8/" *.txt

for i in *.txt; do
    awk ' { t = $5; $5 = $4; $4 = $3; $3=$2; $2=$1; $1=t; print;} '  $i > $i.out
    rm $i
    mv $i.out $i
done

