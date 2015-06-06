json.array!(@positions) do |position|
  json.extract! position, :id, :company_id, :foreign_exchange_id, :date, :amount
  json.url position_url(position, format: :json)
end
