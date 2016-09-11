json.array!(@sweaters) do |sweater|
  json.extract! sweater, :id, :base_id, :pocket_id, :price, :cost
  json.url sweater_url(sweater, format: :json)
end
