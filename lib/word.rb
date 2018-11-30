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
    word_id = id.to_i
    @@words.each do |word|
      if word.id === word_id
        return word
      end
    end
  end

  def self.reassign_ids
    if (@@words != [])
      @@words.each_with_index do |word, i|
        word.id = i + 1
      end
    end
  end

  def self.delete_word(id)
    actual_id = id - 1
    @@words.delete_at(actual_id)
    self.reassign_ids
  end

end
