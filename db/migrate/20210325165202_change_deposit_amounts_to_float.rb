class ChangeDepositAmountsToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :deposits, :amount, :float
  end
end
