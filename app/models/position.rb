class Position < ActiveRecord::Base
	belongs_to :company
	belongs_to :foreign_exchange
end
