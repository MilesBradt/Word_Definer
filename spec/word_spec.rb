require('word')

describe Word do
  describe("find_by_id") do
    it("should return the first test word based on its ID") do
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save

    expect(Word.find_by_id(1).word).to(eq("Ruby"))
    end
  end
  
end
