def first_anagram?(string_1, string_2) #O(n!)
    string_1.chars.permutation.to_a.include?(string_2.chars)
end

p first_anagram?('test', 'estt')

def second_anagram?(string_1, string_2) #O(n^2)
    string_1.each_char do |char|
        index = string_2.index(char)
        if index.nil?
            return false
        end
        string_2[index] = ''
    end
    true
end

p second_anagram?('test', 'estt')
p second_anagram?("gizmo", "sally")    #=> false

def third_anagram?(string_1, string_2) #O(n log n) on average
    string_1.chars.sort == string_2.chars.sort
end

p third_anagram?('test', 'estt') #tru
p third_anagram?("gizmo", "sally")    #=> false



def fourth_anagram?(string_1, string_2) #O(n)
    hash_1 = Hash.new(0)
    hash_2 = Hash.new(0)

    string_1.each_char {|char| hash_1[char] += 1}
    string_2.each_char {|char| hash_2[char] += 1}

    hash_1 == hash_2
end

p fourth_anagram?('test', 'estt') #true
p fourth_anagram?("gizmo", "sally")    #=> false

def fourth_anagram_bonus?(string_1, string_2)
    hash = Hash.new(0)

    string_1.each_char do |char|
        hash[char] += 1
    end

    string_2.each_char do |char|
        hash[char] -= 1
    end

    hash.values.all?(0)
end

p fourth_anagram_bonus?('test', 'estt') #true
p fourth_anagram_bonus?("gizmo", "sally")    #=> false

