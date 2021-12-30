def my_min(arr)
    min = arr.first
    arr.each_with_index do |ele_1, i|
       # p min
        arr.each_with_index do |ele_2, j|
            if ele_2 < min && j != i
                min = ele_2
                break
            end
        end
    end

    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

def my_min_2(arr)
    min = arr.first
    arr.each {|ele| min = ele if ele <= min}
    min
end

p my_min_2(list)  # =>  -5