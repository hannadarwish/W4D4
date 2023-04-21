def hash_sum(arr, target)
    hash = Hash.new(0)

    arr.each do |ele|
        hash[ele] += 1
    end

    hash.each do |k,v|
        if hash[target - k]
            return true
        end
    end
    return false
end

arr = [0, 1, 5, 7]
p hash_sum(arr, 6)
