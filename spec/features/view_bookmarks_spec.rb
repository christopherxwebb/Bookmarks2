feature 'view bookmarks' do
  scenario 'user visits homepage and can see bookmarks' do
    visit('/')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
  end
end