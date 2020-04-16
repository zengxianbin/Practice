#!/usr/local/bin/python3
# -*- coding: UTF-8 -*-
class Solution(object):
    def test1(self):
        '''
        题目：有四个数字：1、2、3、4，能组成多少个互不相同且无重复数字的三位数？各是多少？
        '''
        for i in range(1,5):
            for j in range(1,5):
                for k in range(1,5):
                    if( i != k ) and (i != j) and (j != k):
                        print(i,j,k)

if __name__ == "__main__":
    solution = Solution()
    solution.test1()
