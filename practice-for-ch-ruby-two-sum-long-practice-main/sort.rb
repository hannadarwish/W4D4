def two_sum_merge_sort(arr,target)
    #select all the elements
    #return true if array.sum == target
    return arr if arr.length <=1
    mid = arr.length/2
    left = two_sum_merge_sort(arr[0...mid], target)
    right = two_sum_merge_sort(arr[mid..-1],target)
    merge_helper(left, right)

end
def merge_helper(left,right)
    merged =[]
    left.reverse!
    right.reverse!
    until left.empty? || right.empty?
        if left.last <= right.last
            merged << left.pop
        else 
            merged << right.pop
        end
    end
    merged + left.reverse + right.reverse
end

def two_sum_sort(arr,target)
    arr.sort!
    arr.each do |ele|
        if arr.bsearch {|ele2| ele2 == target-ele}
            return true 
        end
    end
    false
end
# n^2 + n* log(n)
arr = [0, 1, 5, 7]
p two_sum_sort(arr, 8)
