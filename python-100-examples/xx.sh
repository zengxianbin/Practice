for i in {1..100}
do
    pr=$(curl "https://www.runoob.com/python/python-exercise-example$i.html" -s | grep "题目"  | grep "strong" | sed -s 's/<[a-z/]*>//g' | sed -s 's/题目：//g' )
    t=$((i+1000))
    echo -e "**第 ${t:1} 题：** $pr\n" >> README.md

done

sed -i 's/ $//g' README.md
dos2unix README.md
