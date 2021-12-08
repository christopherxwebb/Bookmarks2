require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    ENV
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/add' do
    erb :add
  end

  post '/' do
    # newbookmark = params[:add_bookmark]
    # @bookmarks = Bookmark.new
    Bookmark.create(add_bookmark: params[:add_bookmark])
    redirect '/'
  end

  run! if app_file == $0
end
