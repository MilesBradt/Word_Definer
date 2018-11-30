require('sinatra')
require('sinatra/reloader')
require 'pry'
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @words = Word.view_all
  erb(:index)
end

post('/') do
  user_word = params.fetch("new-word")
  user_definition = params.fetch("new-definition")

  word_and_definition = Word.new({:word => user_word, :definition => user_definition})

  @words = word_and_definition.save
  @words = Word.view_all
  erb(:index)
end
