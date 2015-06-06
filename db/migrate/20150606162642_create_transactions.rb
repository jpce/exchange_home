class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :foreign_exchange_id
      t.integer :client_id
      t.integer :exchange_rate_id
      t.decimal :amount
      t.date :value_date
      t.integer :company_id
      t.integer :operation_type

      t.timestamps null: false
    end
    add_index :transactions, :foreign_exchange_id
    add_index :transactions, :client_id
    add_index :transactions, :exchange_rate_id
    add_index :transactions, :company_id
  end
end
