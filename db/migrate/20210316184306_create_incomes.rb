class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.string :income_type
      t.string :name
      t.integer :projected

      t.timestamps
    end
  end
end
