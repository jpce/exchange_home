class Company < ActiveRecord::Base
	has_many :clients
	private
	def my_private
		"hola private"
	end
end