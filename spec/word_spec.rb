require('word')

describe Word do

  describe("#word") do
    it("returns the word") do
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

      expect(test_word.word).to eq 'Ruby'
    end
  end

  describe("#save") do
    it("returns new saved word with attributes") do
      test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
      test_word.save

      expect(Word.view_all) .to eq [test_word]
    end
  end

  describe("find_by_id") do
    it("returns the first test word based on its ID") do
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save

    expect(Word.find_by_id(1).word).to(eq("Ruby"))
    end
  end

end
