json.array!(@foreign_exchanges) do |foreign_exchange|
  json.extract! foreign_exchange, :id, :description, :name
  json.url foreign_exchange_url(foreign_exchange, format: :json)
end
