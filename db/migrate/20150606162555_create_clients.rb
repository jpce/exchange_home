class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :email 
      t.string :name
      t.string :cellphone
      t.integer :company_id
      t.string :avatar

      t.timestamps null: false
    end
    add_index :clients, :company_id
  end
end
