require 'rails_helper.rb'

feature 'Creating Outgoing Mail' do  
  scenario 'can create Outgoing Mail' do
    visit '/'
    click_link 'New Outgoing Mail'
    attach_file('Document', "public/system/surat_keluars/lampirans/000/000/001/original/e3-2.doc")
    fill_in 'Caption', with: '1st Outgoing Mail #outgoingmail' 
    click_button 'Create Outgoing Mail'
    expect(page).to have_content('#outgoingmail')
    expect(page).to have_content('Lampiran: e3-2.doc')
    #expect(page).to have_css("img[src*='coffee.jpg']")
  end
end