require 'capybara/rspec'
require_relative '../../app'
Capybara.app = Battle

feature 'fill in player name' do
  before(:each) do 
    visit('/')
  end

  scenario 'names entered should appear on screen after submission' do
    fill_in(:name1, with: 'Kim')
    fill_in(:name2, with: 'Chris')
    click_button('Submit')
    expect(page).to have_content 'Kim vs Chris'
  end
end

