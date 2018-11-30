class Word

  attr_accessor :word, :definition, :id

  @@words = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @id = @@words.length + 1
  end

  def save
    @@words.push(self)
  end

  def self.view_all
    return @@words
  end

  def self.find_by_id(id)
    word_id = id.to_i()
    @@words.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

end

test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
