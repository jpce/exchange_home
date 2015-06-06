class ExchangeRate < ActiveRecord::Base
	belongs_to :company
	has_one :foreing_exchange_origin, 
					foreing_key: 'foreing_exchange_orig_id',
					class_name: 'ForeignExchange'
	has_one :foreing_exchange_destination
					foreing_key: 'foreing_exchange_dest_id',
					class_name: 'ForeignExchange'
end
