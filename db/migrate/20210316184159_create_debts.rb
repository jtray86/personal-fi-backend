class CreateDebts < ActiveRecord::Migration[6.1]
  def change
    create_table :debts do |t|
      t.string :debt_type
      t.string :name
      t.integer :inital_amount
      t.integer :current_amount
      t.integer :interest
      t.boolean :in_collection

      t.timestamps
    end
  end
end
