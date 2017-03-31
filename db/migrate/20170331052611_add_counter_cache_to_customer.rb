class AddCounterCacheToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :quotes_count, :integer, default: 0
  end
end
