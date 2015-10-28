
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: 'Edward'
    fill_in :player_2, with: 'Octavian'
    click_button 'Submit'
    expect(page).to have_content 'Edward vs Octavian'
  end
end
