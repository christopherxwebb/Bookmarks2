require 'bookmark'
require 'database_connection'

describe Bookmark do
  let(:subject) { described_class.new }

  describe '.all' do

    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.reddit.com');")
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.reddit.com')
    end

  end



end
