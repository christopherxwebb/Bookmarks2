feature 'view bookmarks' do
  scenario 'user visits homepage and can see bookmarks' do
    # visit('/')
    # expect(page).to have_content "http://www.makersacademy.com"
    # expect(page).to have_content "http://www.google.com"

    connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.reddit.com');")
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.reddit.com')
  end
end