feature 'adding a bookmark' do
    scenario 'user can add bookmark to bookmark manager' do
    visit('/add')
    fill_in('URL', with: 'http://www.youtube.com')
    fill_in('Title', with: 'YouTube')
    click_button('Submit')
    expect(page).to have_link('YouTube', href: 'http://www.youtube.com')
    end
end
