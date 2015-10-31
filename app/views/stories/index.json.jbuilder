json.array!(@stories) do |story|
  json.extract! story, :id, :title, :author, :date, :story, :caption, :image, :published, :main_story
  json.url story_url(story, format: :json)
end
