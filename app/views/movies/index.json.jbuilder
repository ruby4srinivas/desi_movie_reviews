json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :movie_length, :director, :producer, :rating
  json.url movie_url(movie, format: :json)
end
