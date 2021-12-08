feature 'adding a bookmark' do
    scenario 'user can add bookmark to bookmark manager' do
    visit('/add')
    fill_in :add_bookmark, with: 'www.youtube.com'
    click_button('Add')
    expect(page).to have_content('www.youtube.com')
    end
end
