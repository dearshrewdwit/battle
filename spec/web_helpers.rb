def sign_in_and_play(p1,p2 )

  visit('/')
  fill_in :player_1, with: p1
  fill_in :player_2, with: p2
  click_button 'Submit'

end
