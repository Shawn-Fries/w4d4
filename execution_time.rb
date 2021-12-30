def my_min(arr) # O(n^2)
   # min = arr.first
    arr.each_with_index do |ele_1, i|
       comparisons = []
        arr.each_with_index do |ele_2, j|
            if  j != i
                comparisons <<  ( ele_1 < ele_2 )
            end
        end
        puts comparisons
        return ele_1 if comparisons.all?(true) 
    end

    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 # my_min(list)  # =>  -5

def my_min_2(arr) # O(n)
    min = arr.first
    arr.each {|ele| min = ele if ele <= min}
    min
end

# p my_min_2(list)  # =>  -5


def largest_contiguous_subsum(array) #O(n^3) in time and space

    subArrays = []

    (0...array.length).each do |i| #O(n^3)
        (i...array.length).each do |j|
            subArrays << array[i..j]
        end
    end
   max = array.first
   subArrays.each do |subArr| #O(n^2)
        max = subArr.sum if subArr.sum > max
    end

    max
    
end

# p largest_contiguous_subsum([5, 3, -7])



def largest_contiguous_subsum_2(array)
    current_sum = array.first
    largest_sum = array.first
    (1...array.length).each do |i|
        current_sum = 0 if current_sum < 0
        current_sum += array[i] # 5
        largest_sum = current_sum if current_sum >= largest_sum #largest_sum = 5    current_sum  = 5 
        
    end
    largest_sum

end

p largest_contiguous_subsum_2([2, 3, -6, 7, -6, 7])