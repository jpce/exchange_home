class ForeignExchange < ActiveRecord::Base
	belongs_to :foreing_exchange_origin, 
					foreing_key: 'foreing_exchange_orig_id'
	belongs_to :foreing_exchange_destination, 
					foreing_key: 'foreing_exchange_dest_id'
end