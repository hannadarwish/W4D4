# def my_min_p1(list)
#     current_lowest = list[0]
#     list.each_with_index do |num1, i|
#         list.each_with_index do |num2, j|
#             if num1 < current_lowest && i != j
#                 current_lowest = num1
#             end
#         end
#     end
#     return current_lowest
# end

# p my_min_p1([2,2,3,4,5, -5])
# O(n^2)

# def my_min_p2(list)
#     list.inject do |acc, num|
#         if acc > num
#             acc = num
#         else
#             acc
#         end
#     end
# end

# p my_min_p2([2,2,3,4,5, -5])
#O(n)