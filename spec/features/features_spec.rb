require './app'
require 'spec_helper'

feature do
  scenario 'expects the homepage to say Testing infrastructure working!' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'when a person adds their name, see that name on the screen' do
    visit('/')
    fill_in('player1', with: 'Gordon')
    fill_in('player2', with: 'Foo')
    click_button 'Create Players'
    expect(page).to have_text('Player 1 is Gordon')
    expect(page).to have_text('Player 2 is Foo')
    expect(page).to have_text('Let the battle commence!')
  end
end
