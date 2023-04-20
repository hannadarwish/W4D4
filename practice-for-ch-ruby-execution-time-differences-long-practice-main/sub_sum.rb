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

def sum_sum_p2(list)
    return list.sum if list.all? {|ele| ele>0}
    largest=0
    current_sum=0
    list.each_with_index do |num,i|
        if current_sum+num < 0
            current_sum = 0
        else
            current_sum +=num 
        end 
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