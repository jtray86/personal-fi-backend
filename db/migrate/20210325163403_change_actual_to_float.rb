class ChangeActualToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :bills, :actual, :float
  end
end
