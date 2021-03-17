class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :outgoing, null: false, foreign_key: true
      t.integer :actual
      t.date :paid_date

      t.timestamps
    end
  end
end
