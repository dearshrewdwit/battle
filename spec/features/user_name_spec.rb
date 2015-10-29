
feature 'Enter names' do

  before do
    sign_in_and_play('Edward','Chuka')
  end

  scenario 'submitting names' do
    expect(page).to have_content 'Edward vs Chuka'
  end

  scenario 'see hit points' do
    expect(page).to have_content 'Chuka: 100HP'
  end
end
