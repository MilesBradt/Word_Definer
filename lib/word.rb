class Word

  attr_accessor :word, :definition, :id, :definitions

  @@words = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @id = @@words.length + 1
    @definitions = []
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

  def edit_def(new_def)
    self.definition = new_def
  end

  def another_def(defintion)
    self.definitions.push(defintion)
  end

  def self.clear
    return @@words = []
  end

end
