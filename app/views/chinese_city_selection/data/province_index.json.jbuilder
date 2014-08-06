json.array!(@provincies) do |province|
  json.extract! province, :id, :name
end