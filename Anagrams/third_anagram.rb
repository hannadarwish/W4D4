def third_anagram?(word1,word2)
word1.split('').sort==word2.split('').sort
end
#time_complexity is n*log(n)
#sort uses quick sort
alpha = 'abcdefghijklmnopqrstuvwxyz'
p third_anagram?('abcdefghijklmnopqrstuvwxyz',alpha.reverse)