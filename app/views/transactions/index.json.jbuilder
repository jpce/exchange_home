json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :foreign_exchange_id, :client_id, :exchange_rate_id, :amount, :value_date, :company_id, :operation_type
  json.url transaction_url(transaction, format: :json)
end
