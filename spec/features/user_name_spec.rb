
feature 'Enter names' do

  before do
    visit('/')
    fill_in :player_1, with: 'Edward'
    fill_in :player_2, with: 'Octavian'
    click_button 'Submit'
  end

  scenario 'submitting names' do
    expect(page).to have_content 'Edward vs Octavian'
  end

  scenario 'see hit points' do
    expect(page).to have_content 'Octavian: 100hp'
  end

end
