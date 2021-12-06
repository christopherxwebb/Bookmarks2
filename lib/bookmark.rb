require_relative './database_connection'

class Bookmark
  def self.all
    DatabaseConnection.setup('bookmark_manager')
    result = DatabaseConnection.query("SELECT * FROM bookmarks;")
    result.map{|bookmark| bookmark["url"]}
  end
end