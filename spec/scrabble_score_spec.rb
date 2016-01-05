require('rspec')
require('scrabble_score')

describe("String#scrabble_score") do
  it('returns a scrabble score for a letter') do
    expect("i".scrabble_score()).to(eq(1))
  end
  it('returns a scrabble score for a more valuable letter') do
    expect('d'.scrabble_score()).to(eq(2))
  end
  it('returns a scrabble score for an even more valued letter') do
    expect('b'.scrabble_score()).to(eq(3))
  end
end
