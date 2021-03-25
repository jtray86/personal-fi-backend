class ChangeEarningsAmountsToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :earnings, :actual, :float
  end
end
