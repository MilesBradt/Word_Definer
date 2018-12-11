require "capybara/rspec"
require "./app"
require "pry"


Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe 'the word creation path', {:type => :feature} do
  it 'takes the user to the homepage where they can add words and definitions' do
    visit '/'
    fill_in('new-word', :with => 'Ruby')
    fill_in('new-definition', :with => "Programming language" )
    click_button('Add Word')
    expect(page).to have_content('Ruby')
  end
end

describe 'the word detail page', {:type => :feature} do
  it 'shows the user the definitions they added to a word' do
    visit "/words/1"
    fill_in('edit', :with => 'is language')
    click_button('Edit')
    expect(page).to have_content('is language')
  end
end
