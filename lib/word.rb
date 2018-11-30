class Word

  attr_accessor :word, :definition

  @@words = []

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @id = @@words.length
  end

  def save
    @@words.push(self)
  end

  def self.view_all
    return @@words
  end
end
