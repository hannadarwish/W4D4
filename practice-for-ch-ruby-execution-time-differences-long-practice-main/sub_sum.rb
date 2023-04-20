def sub_sum_p1(list)
    sub_arrays=[]
    list.each_with_index do |num,i| 
        sub_arrays << [num]
        list.each_with_index do |num2,j| 
            if j>i  
                sub_arrays << list[i..j]
             end
        end
    end
    largest = 0
    sub_arrays.each do |sub|
        if sub.sum > largest 
            largest = sub.sum
        end
    end
    largest
end

list = [5, 3, -7]

# p sub_sum_p1(list)
test=[-5,-10,-2,-25]
def sum_sum_p2(list)
    # return list.sum if list.all? {|ele| ele>0}
    # return list.max if list.all?(&:negative?)
    largest=list.first # 1st loop: -5
    current_sum=list.first # 1st loop: -5 -> 0 -> -10
    #[-10,-2,-25]
    list[1..-1].each_with_index do |num,i|
        if current_sum < 0
            current_sum = 0
        end
        current_sum +=num 
        if current_sum>largest 
            largest = current_sum
        end 
    end
    largest
end

#Operators are constants
# (0...list.length)
# list.inject do |largest, num|   
list =      [2, 3,-6, 7, -6, 7]
# largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# list = [1,2,3,-1,2,4,-5,2]
p sub_sum_p1(list)
p sum_sum_p2(list)

test=[-5,-10,-2,-25]
p sum_sum_p2(test)
