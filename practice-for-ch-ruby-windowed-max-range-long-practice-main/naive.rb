def naive(arr, w)
    arr.sort!
    cur_max_range = 0
    max_range = 0
    (0..arr.length - w).each do |i|
        cur_max_range = arr[i + (w-1)] - arr[i]
            if cur_max_range > max_range
                max_range = cur_max_range
            end
    end
    max_range
end

p naive([1, 3, 2, 5, 4, 8], 5)