
feature 'Enter names' do

  before do
    sign_in_and_play
  end

  scenario 'submitting names' do
    expect(page).to have_content 'Edward vs Octavian'
  end

  scenario 'see hit points' do
    expect(page).to have_content 'Octavian: 100hp'
  end

  scenario 'attack player 2' do
    click_button('Attack!')
    expect(page).to have_content("Edward attacked Octavian!")
  end

end
