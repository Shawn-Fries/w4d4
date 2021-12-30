def bad_two_sum?(arr,target_sum) 
   #Time Complexity: O(n^2)     Space Complexity: O(1) 
    (0...arr.length-1).each do |i|
        ((i+1)...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum 
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr,target_sum)   #Time Complexity: O( n*log(n) )    Space Complexity: O(n)
    sorted_arr = arr.sort 

    (0...sorted_arr.length).each do |i|
       match = (sorted_arr[0...i] + sorted_arr[(i+1)..-1]).bsearch { |x| x == target_sum - sorted_arr[i] }
       return true unless match.nil?
    end
    false
end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(arr,target_sum)  #Time Complexity and Space Complexity : O(n)
    hash = {}
    arr.each do |ele|
        return true if hash[target_sum-ele] 
        hash[ele] = true
    end
    false
end
   
arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false