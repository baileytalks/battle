require './app'
require 'spec_helper'

feature do
  scenario 'expects the homepage to say Testing infrastructure working!' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'when player 1 is playing, they need to see player 2 HP count' do
    visit('/')
    fill_in('player1', with: 'Gordon')
    fill_in('player2', with: 'Foo')
    click_button 'Create Players'
    expect(page).to have_text('Player 1 is Gordon, who has')
    expect(page).to have_text('Player 2 is Foo, who has')
    expect(page).to have_text('Let the battle commence!')
  end

  scenario 'when you hit the fight button, you start the fight and see HP count' do
    visit('/')
    fill_in('player1', with: 'Gordon')
    fill_in('player2', with: 'Foo')
    click_button 'Create Players'
    click_button 'Fight!'
    expect(page).to have_text('Gordon')
    expect(page).to have_text('HP:')
  end
end
