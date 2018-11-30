require('word')

describe("find_by_id") do

  it("should return the first test word based on its ID") do

  test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
  test_word.save

  test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
  test_word2.save

  test_method_first_word = Word.find_by_id(1)
  expect(test_method_first_word.word).to(eq("Ruby"))
  end

  it("should return the second test word based on its ID") do

  test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
  test_word.save

  test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
  test_word2.save

  test_method_second_word = Word.find_by_id(2)
  expect(test_method_second_word.word).to(eq("Ruby (2)"))
  end

  it("should return the first test definition based on its ID") do

  test_def = Word.new({:word => "Ruby", :definition => "Programming language"})
  test_def.save

  test_def = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
  test_def.save

  test_method_first_def = Word.find_by_id(1)
  expect(test_method_first_def.definition).to(eq("Programming language"))
  end

  it("should return the second test definition based on its ID") do

  test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
  test_word.save

  test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
  test_word2.save

  test_method_second_def = Word.find_by_id(2)
  expect(test_method_second_def.definition).to(eq("Programming language (2)"))
  end

end

describe("delete_word") do

  it("should delete first word in the array") do
    test_word = Word.new({:word => "Ruby", :definition => "Programming language"})
    test_word.save

    test_word2 = Word.new({:word => "Ruby (2)", :definition => "Programming language (2)"})
    test_word2.save

    Word.delete_word(1)

    test_method_first_word = Word.find_by_id(1)
    expect(test_method_first_word.word).to(eq("Ruby (2)"))
  end

  

end
