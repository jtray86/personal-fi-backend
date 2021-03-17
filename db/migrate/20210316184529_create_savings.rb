class CreateSavings < ActiveRecord::Migration[6.1]
  def change
    create_table :savings do |t|
      t.string :saving_type
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
