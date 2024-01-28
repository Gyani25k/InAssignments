"""

Problem 2:
Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2,....,N} is missing and one number 'B' occurs twice in the array. Find these two numbers.

Example 1:
Input:
N = 2
Array: [2, 2]
Output: 2 1
Explanation: Repeating number is 2 and the smallest positive missing number is 1.


"""


def get_element_missing_repeated_element(arr):
    seen = set()
    n = len(arr)
    repeated_element = 0
    total_sum = (n*(n+1))/2
    arr_sum = sum(arr)
    missing_element = int(arr_sum - total_sum)
    
    for element in arr:
        if element in seen:
            repeated_element = element
        seen.add(element) 
    return missing_element,repeated_element
