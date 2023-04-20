def first_anagram?(word1, word2)
    letters1 = word1.split("")
    perm1 = letters1.permutation.to_a
    perm1.include?(word2.split(""))
end

p first_anagram?("gizmo", "zoigm")
