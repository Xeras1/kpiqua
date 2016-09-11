json.array!(@pockets) do |pocket|
  json.extract! pocket, :id, :color, :image
  json.url pocket_url(pocket, format: :json)
end
