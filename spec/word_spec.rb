require('word')
require 'pry'

describe Word do

  describe("#word") do
    it("returns the word") do
      Word.clear
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.word).to eq 'Ruby'
    end
  end

  describe("#definition") do
    it("returns the definition of a word") do
      Word.clear
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.definition).to eq 'Programming language'
    end
  end

  describe("#id") do
    it("returns the id of a word") do
      Word.clear
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.id).to eq 1
    end
  end

  describe("#save") do
    it("returns new saved word with attributes") do
      Word.clear
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
      test_word.save

      expect(Word.view_all) .to eq [test_word]
    end
  end

  describe("#find_by_id") do
    it("returns the first test word based on its ID") do
    Word.clear
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save
    test_word3 = Word.new({:word => "Ruby (3)", :definition => "Programming language (3)"})
    test_word3.save

    expect(Word.find_by_id(2).word).to(eq("Ruby (2)"))
    end
  end

  describe("#edit_def") do
    it("edits the definition of a saved word") do
    Word.clear
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    Word.edit_def("This is a test", 1)

    expect(test_word.definition).to eq "This is a test"
    end
  end

  describe("#another_def") do
    it("adds new definition to an array") do
      Word.clear
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
      test_word.save
      Word.another_def("Testing", 1)

      expect(test_word.definitions[0]).to eq "Testing"
    end

    it("adds new multiple definitions to an array") do
      Word.clear
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
      test_word.save
      Word.another_def("Testing", 1)
      Word.another_def("Testing even more", 1)

      expect(test_word.definitions).to eq ["Testing", "Testing even more"]
    end
  end


end
