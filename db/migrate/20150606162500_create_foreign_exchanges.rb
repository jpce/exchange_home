class CreateForeignExchanges < ActiveRecord::Migration
  def change
    create_table :foreign_exchanges do |t|
      t.string :description
      t.string :name

      t.timestamps null: false
    end
  end
end
