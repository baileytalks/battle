def sign_up_and_play
  visit('/')
  fill_in('player1', with: 'Gordon')
  fill_in('player2', with: 'Foo')
  click_button 'Create Players'
end

def fight
  click_button 'Fight!'
end
