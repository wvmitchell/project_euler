class Names

  attr_reader :words

  def initialize(*args)
    @words = args
  end

  def score
    single_score(words.first)
  end

  def single_score(word)
    word.downcase.chars.inject(0) do |score, char|
      score + alphabet.index(char) + 1
    end
  end

  private

  def alphabet
    @alphabet ||= ('a'..'z').to_a
  end

end
