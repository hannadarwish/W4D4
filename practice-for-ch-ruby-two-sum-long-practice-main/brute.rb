def two_sum_brute?(arr,target_sum)
    arr.each_with_index do |ele,i|
        arr.each_with_index do |ele2,j|
            if j>i
                if ele+ele2 == target_sum 
                    return true 
                end
            end
        end
    end
    false

end

arr = [0, 1, 5, 7]
p two_sum_brute?(arr,12)