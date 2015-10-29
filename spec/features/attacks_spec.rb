
feature 'Player attacks' do

  before do
    sign_in_and_play
    click_button('Attack!')
  end

  scenario 'attack player 2' do
    expect(page).to have_content("Edward randomly attacked Octavian")
  end

  scenario 'go back to play' do
    click_button 'back'
    expect(page).to have_content 'Edward vs Octavian'
  end
end
