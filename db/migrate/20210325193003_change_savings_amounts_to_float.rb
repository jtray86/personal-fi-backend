class ChangeSavingsAmountsToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :savings, :amount, :float
  end
end
