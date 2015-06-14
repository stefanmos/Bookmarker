json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :name, :url
  json.url bookmark_url(bookmark, format: :json)
end
