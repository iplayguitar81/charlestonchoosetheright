json.array!(@highlights) do |highlight|
  json.extract! highlight, :id, :title, :date, :caption, :image
  json.url highlight_url(highlight, format: :json)
end
