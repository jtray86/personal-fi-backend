class CreateDeposits < ActiveRecord::Migration[6.1]
  def change
    create_table :deposits do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :saving, null: false, foreign_key: true
      t.integer :amount
      t.date :deposit_date

      t.timestamps
    end
  end
end
