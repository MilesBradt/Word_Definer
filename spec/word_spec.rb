require('word')
require 'pry'

describe Word do

  describe("#word") do
    it("returns the word") do
      @@words = []
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.word).to eq 'Ruby'
    end
  end

  describe("#definition") do
    it("returns the definition of a word") do
      @@words = []
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.definition).to eq 'Programming language'
    end
  end

  describe("#id") do
    it("returns the id of a word") do
      @@words = []
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.id).to eq 1
    end
  end

  describe("#save") do
    it("returns new saved word with attributes") do
      @@words = []
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
      test_word.save

      expect(Word.view_all) .to eq [test_word]
    end
  end

  describe("#find_by_id") do
    it("returns the first test word based on its ID") do
    @@words = []
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save

    expect(Word.find_by_id(1).word).to(eq("Ruby"))
    end
  end

  describe("#edit_def") do
    it("edits the definition of a saved word") do
    @@words = []
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    Word.edit_def("This is a test", 1)

    expect(test_word.definition).to eq "This is a test"
    end
  end


end
