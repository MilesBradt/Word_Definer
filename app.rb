require('sinatra')
require('sinatra/reloader')
require ('pry')
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

get ('/words/:id') do
  id = params[:id].to_i
  @words = Word.find_by_id(id)
  erb(:words)
end


post ("/words/:id") do
  id = params[:id].to_i
  new_def = params.fetch("edit")
  @words = Word.find_by_id(id)
  @words.edit_def(new_def)
  erb(:words)
end

post ("/words/:id/multi") do
  id = params[:id].to_i
  new_def = params.fetch("new-definition")
  @words = Word.find_by_id(id)
  @words.another_def(new_def)
  erb(:words)
end
