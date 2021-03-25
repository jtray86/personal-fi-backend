class ChangeDebtAmountsToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :debts, :inital_amount, :float
    change_column :debts, :current_amount, :float
  end
end
