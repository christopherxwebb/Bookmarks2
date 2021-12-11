# feature 'view bookmarks' do
#   scenario 'user visits homepage and can see bookmarks' do
#     # visit('/')
#     # expect(page).to have_content "http://www.makersacademy.com"
#     # expect(page).to have_content "http://www.google.com"

#     connection = PG.connect(dbname: 'bookmark_manager_test')

#       connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.reddit.com');")
#       bookmarks = Bookmark.all
#       expect(bookmarks).to include('http://www.reddit.com')


#       # feature 'Viewing bookmarks' do
#       #   scenario 'A user can see bookmarks' do
#           Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
#           Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
#           Bookmark.create(url: 'http://www.google.com', title: 'Google')
      
#           visit '/'
#           expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
#           expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
#           expect(page).to have_link('Google', href: 'http://www.google.com')
#         end
#       end

feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'

      expect(page).to have_content 'Bookmarks'
    end
  end

feature 'viewing bookmarks' do
  scenario 'bookmarks are visible' do
    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
    Bookmark.create(url: "http://www.google.com", title: "Google")
    
    visit '/'
    
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    end
  end
end