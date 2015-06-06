class CreateExchangeRates < ActiveRecord::Migration
  def change
    create_table :exchange_rates do |t|
      t.datetime :date
      t.decimal :value
      t.integer :foreing_exchange_orig_id
      t.integer :foreing_exchange_dest_id
      t.integer :operation_type
      t.date :value_date
      t.integer :company_id

      t.timestamps null: false
    end
    add_index :exchange_rates, :foreing_exchange_orig_id
    add_index :exchange_rates, :foreing_exchange_dest_id
    add_index :exchange_rates, :company_id
  end
end
