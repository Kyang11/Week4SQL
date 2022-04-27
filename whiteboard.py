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


            
            

