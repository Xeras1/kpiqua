json.array!(@bases) do |basis|
  json.extract! basis, :id, :color, :image, :hoop, :neck
  json.url basis_url(basis, format: :json)
end
