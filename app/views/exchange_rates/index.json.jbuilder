json.array!(@exchange_rates) do |exchange_rate|
  json.extract! exchange_rate, :id, :date, :value, :foreing_exchange_orig_id, :foreing_exchange_dest_id, :operation_type, :value_date, :company_id
  json.url exchange_rate_url(exchange_rate, format: :json)
end
