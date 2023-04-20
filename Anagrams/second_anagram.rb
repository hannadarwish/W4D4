def second_anagram?(word1, word2)
    letters1 = word1.split("")
    letters2 = word2.split("")
    letters1.each do |char|
        char_idx = letters2.index(char)
        return false if char_idx == nil
        letters2.delete_at(char_idx)
    end
    letters2.empty?
end

p second_anagram?("gizmo", "sally")