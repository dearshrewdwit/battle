def sign_in_and_play

  visit('/')
  fill_in :player_1, with: 'Edward'
  fill_in :player_2, with: 'Octavian'
  click_button 'Submit'

end
