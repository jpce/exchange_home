class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :company_id
      t.integer :foreign_exchange_id
      t.date :date
      t.decimal :amount

      t.timestamps null: false
    end
    add_index :positions, :company_id
    add_index :positions, :foreign_exchange_id
  end
end
