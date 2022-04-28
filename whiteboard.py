# Least Larger
# Given an array of numbers and an index, return the index of the least number
# larger than the element at the given index, or -1 if there is no such index.
# Example:
# Input: ([4, 1, 3, 5, 6], 0 ) 
# Output: 3
# Input: ([4, 1, 3, 5, 6], 4)
# Output: -1

# def array(numbers, index):
#     list=[]
#     for number in numbers:
#         if number > numbers[index]:
#             list.append(number)
#     if not list:
#         return -1
#     else:  
#         return numbers.index(min(list))

# numbers = [4, 1, 3, 5, 6] 
# print(array(numbers, 4))
# print(array(numbers, 0))




# # Complete the solution so that the function will break up camel casing, using a space between words.

# # "camelCasing"  =>  "camel Casing"
# # "identifier"   =>  "identifier"
# # ""             =>  ""

# def space(cc):
#     new=""
#     for letter in cc:
#         if letter.isupper():
#             new+=" "
#         new+=letter
#     return new
# print(space("camelCasting"))
# print(space("identifier"))


# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice
            
# def count(string):
#     letters = {}
#     for letter in string.lower():
#         if letter not in letters:
#             letters [letter] = 1
#         else:
#             letters [letter] += 1

#     count = 0
#     for num in letters.values():
#         if num > 1:
#             count += 1
#     return count

# print(count("aabbcde"))
# print(count("indivisibility"))
# print(count("aA11"))
# white_check_mark
# eyes
# raised_hands

















