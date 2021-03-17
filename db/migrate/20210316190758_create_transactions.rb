class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :debt, null: false, foreign_key: true
      t.integer :amount
      t.date :transaction_date

      t.timestamps
    end
  end
end
