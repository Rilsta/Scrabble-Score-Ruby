class String
  define_method(:scrabble_score) do
    return "Input is not valid" if self.is_number || self =~ /[[:punct:]]/

    alphabet_score = Hash.new()
    alphabet_score.store("AEIOULNRST", 1)
    alphabet_score.store("DG", 2)
    alphabet_score.store("BCMP", 3)
    alphabet_score.store("FHVWY", 4)
    alphabet_score.store("K", 5)
    alphabet_score.store("JX", 8)
    alphabet_score.store("QZ", 10)

    alphabet_score.keys.each do |score_key|
      score_string = score_key.split(//)
      if score_string.include?( self.upcase )
        return alphabet_score.fetch(score_key)
      end
    end
  end

  define_method( :is_number ) do
    return self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end
