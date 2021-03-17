class CreateOutgoings < ActiveRecord::Migration[6.1]
  def change
    create_table :outgoings do |t|
      t.string :outgoing_type
      t.string :name
      t.integer :projected
      t.date :due_date

      t.timestamps
    end
  end
end
