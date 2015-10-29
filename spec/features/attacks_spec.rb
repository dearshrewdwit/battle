
feature 'Player attacks' do

  before do
    sign_in_and_play('Edward','Chuka')
    click_button('Attack!')
  end

  scenario 'attack player 2' do
    expect(page).to have_content("Edward attacked Chuka")
  end

  scenario 'go back to play' do
    click_button 'back'
    expect(page).to have_content 'Edward vs Chuka'
  end

  scenario 'attack player 2' do
    click_button 'back'
    click_button('Attack!')
    expect(page).to have_content("Chuka attacked Edward")
  end
end
