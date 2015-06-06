class Transaction < ActiveRecord::Base
	belongs_to :company
	belongs_to :exchange_rate 
	after_create :create_or_update_position
	
	private
	def create_or_update_position		
		created_at_date = created_at.to_date
		pos_origins = Position.where(date: created_at_date, company_id: company_id,
			foreign_exchange_id: exchange_rate.foreing_exchange_orig_id)
		pos_destins = Position.where(date: created_at_date, company_id: company_id,
			foreign_exchange_id: exchange_rate.foreing_exchange_dest_id)

		if pos_origins.empty?
			Position.create(
				amount: amount_for_local,
				company_id: company_id,
				date: created_at_date,
				foreign_exchange_id:exchange_rate.foreing_exchange_orig_id
			)
		else
			pos = pos_origins.first
			pos.update_attribute :amount, pos.amount + amount_for_local
		end

		if pos_destins.empty?
			Position.create(
				amount: amount,
				company_id: company_id,
				date: created_at_date,
				foreign_exchange_id:exchange_rate.foreing_exchange_dest_id
			)
		else
			pos = pos_destins.first
			pos.update_attribute :amount, pos.amount + amount
		end
	end
	def amount_for_local
		amount * exchange_rate.value
	end
end