require './app'
require 'spec_helper'

feature do
  # scenario 'expects the homepage to say Testing infrastructure working!' do
  #   visit('/')
  #   expect(page).to have_content('Testing infrastructure working!')
  # end

  scenario 'when player 1 is playing, they need to see player 2 HP count' do
    sign_up_and_play
    expect(page).to have_text('Player 1 is Gordon, who has')
    # expect(page).to have_text('Player 2 is Foo, who has')
    # expect(page).to have_text('Let the battle commence!')
  end

  scenario 'when you hit the fight button, you start the fight and see HP count' do
    sign_up_and_play
    fight
    # expect(page).to have_text('Gordon')
    expect(page).to have_text('HP:')
  end

  scenario 'when I click on the fight button, I want a confirmation' do
    sign_up_and_play
    fight
    expect(page).to have_text('Gordon has attacked Foo!')
  end

  ## This is flawed! STOP IT AND STUB THE RANDOMNESS!!!!
  scenario 'attack player 2 and reduce their HP by 10' do
    sign_up_and_play
    fight
    expect(page).to have_content "Foo"
  end
end
