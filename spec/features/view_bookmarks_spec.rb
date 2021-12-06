feature 'view bookmarks' do
  scenario 'user visits homepage and can see bookmarks' do
    visit('/')
    expect(page).to have_content "https://github.com"
    expect(page).to have_content "https://google.com"
  end
end