require('word')

describe("find_by_id") do
  it("should return a word based on its ID") do

  test_word = Word.new({:word => "Ruby", :definition => "Programming language"})

  test_word.save

  test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})

  test_word2.save

  test_method_word = Word.find_by_id(2)

  expect(test_method_word.word).to(eq("Ruby (2)"))
  end

end
