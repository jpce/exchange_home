class Company < ActiveRecord::Base
	has_many :clients
	has_many :exchange_rates
	has_many :users
	has_many :positions
	has_many :transactions
end