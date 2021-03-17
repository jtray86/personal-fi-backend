class CreateEarnings < ActiveRecord::Migration[6.1]
  def change
    create_table :earnings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :income, null: false, foreign_key: true
      t.integer :actual
      t.date :pay_day

      t.timestamps
    end
  end
end
