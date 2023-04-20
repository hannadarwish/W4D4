def fourth_anagram?(word1,word2)
    hash_creator(word1) == hash_creator(word2)
end

def hash_creator(word)
    result=Hash.new(0)
    word.each_char {|c| result[c]+=1}
    result
end
alpha = 'abcdefghijklmnopqrstuvwxyz'
    p fourth_anagram?('abcdefghijklmnopqrstuvwxyz',alpha.reverse)
