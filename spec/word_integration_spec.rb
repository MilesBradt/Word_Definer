require "capybara/rspec"
require "./app"
require "pry"


Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe 'the word creation path', {:type => :feature} do
  it 'takes the user to the homepage where they can add words and definitions' do
    visit '/'
    fill_in('new-word', :with => 'Ruby')
    click_button('add')
    expect(page).to have_content('Ruby')
  end
end
