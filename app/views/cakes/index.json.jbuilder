json.array!(@cakes) do |cake|
  json.extract! cake, :id, :name
  json.url cake_url(cake, format: :json)
end
