require 'bookmark'

describe Bookmark do
  let(:subject) { described_class.new }

  describe '.all' do
    it 'returns a list of bookmarks' do
      expect(Bookmark.all).to eq(["https://github.com", "https://google.com"])
    end
  end
end
