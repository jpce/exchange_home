class ExchangeRate < ActiveRecord::Base
	belongs_to :company
	belongs_to :foreing_exchange_origin, 
					foreign_key: 'foreing_exchange_orig_id',
					class_name: 'ForeignExchange'
	belongs_to :foreing_exchange_destination,
					foreign_key: 'foreing_exchange_dest_id',
					class_name: 'ForeignExchange'
end