for i in {1..100}
do
    pr=$(curl "https://www.runoob.com/python/python-exercise-example$i.html" -s | grep "题目"  | grep "strong" | sed -s 's/<[a-z/]*>//g' )
    templet="#!/usr/local/bin/python3
# -*- coding: UTF-8 -*-
class Solution(object):
    def test$i(self):
        '''
            $pr 
        '''
        return \"\"
if __name__ == \"__main__\":
    solution = Solution()
    solution.test$i()"

    echo -e "$templet" > test$i.py
    sed -i 's/ $//g' test$i.py
    dos2unix test$i.py
    chmod +x test$i.py

done


