class ChangeIncomesAmountsToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :incomes, :projected, :float
  end
end
