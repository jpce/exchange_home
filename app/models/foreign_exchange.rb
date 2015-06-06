class ForeignExchange < ActiveRecord::Base
	has_many :positions

	has_many :foreing_exchange_origins, 
					foreign_key: 'foreing_exchange_orig_id'
	has_many :foreing_exchange_destinations, 
					foreign_key: 'foreing_exchange_dest_id'
end