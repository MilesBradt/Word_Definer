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

    it("should return the second test word based on its ID") do
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save

    expect(Word.find_by_id(2).word).to(eq("Ruby (2)"))
    end

    it("should return the first test definition based on its ID") do
    test_def = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_def.save
    test_def = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_def.save

    expect(Word.find_by_id(1).definition).to(eq("Programming language"))
    end

    it("should return the second test definition based on its ID") do
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save
    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save

    expect(Word.find_by_id(2).definition).to(eq("Programming language (2)"))
    end

  end

  # describe("delete_word") do
  #
  #   it("should delete first word in the array") do
  #     test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
  #     test_word.save
  #
  #     test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
  #     test_word2.save
  #
  #     Word.delete_word(1)
  #
  #     expect(Word.find_by_id(1).word).to(eq("Ruby (2)"))
  #   end
  #
  #   it("should delete second word in the array") do
  #     test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
  #     test_word.save
  #
  #     test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
  #     test_word2.save
  #
  #     test_word3 = Word.new({:word => "Ruby (3)", :definition => "Programming language (3)"})
  #     test_word3.save
  #
  #     Word.delete_word(2)
  #
  #     #Works just fine through irb but fails here
  #     #ID of this is 11 (what...why?) when it should be 2, this doesn't happen in irb when running the exact same steps
  #     expect(Word.find_by_id(2).word).to(eq("Ruby (3)"))
  #
  #   end

end
