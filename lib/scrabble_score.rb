class String
  define_method(:scrabble_score) do
    alphabet_score = Hash.new()
    alphabet_score.store("AEIOULNRST", 1)
    alphabet_score.store("DG", 2)
    alphabet_score.store("BCMP", 3)
    alphabet_score.store("FHVWY", 4)

    alphabet_score.keys.each do |score_key|
      score_string = score_key.split(//)
      score_string.each do |letter|
        if self == letter || self == letter.downcase
          return alphabet_score.fetch(score_key)
        end
      end
    end
  end
end
