class Names

  attr_reader :words

  def initialize(*args)
    @words = args.flatten.sort
  end

  def score
    words.collect.with_index do |word, index|
      single_score(word, index)
    end.inject(:+)
  end

  def single_score(word, index)
    word.downcase.chars.inject(0) do |score, char|
      score + (alphabet.index(char) + 1)
    end * (index+1)
  end

  private

  def alphabet
    @alphabet ||= ('a'..'z').to_a
  end

end
