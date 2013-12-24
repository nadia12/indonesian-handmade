json.array!(@etalases) do |etalase|
  json.extract! etalase, :id, :title, :photo, :description, :price
  json.url etalase_url(etalase, format: :json)
end
