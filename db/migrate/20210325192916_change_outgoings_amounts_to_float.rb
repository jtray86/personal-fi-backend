class ChangeOutgoingsAmountsToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :outgoings, :projected, :float
  end
end
