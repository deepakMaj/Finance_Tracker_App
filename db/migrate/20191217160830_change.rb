class Change < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_stocks, :users_id, :user_id
    rename_column :user_stocks, :stocks_id, :stock_id
  end
end
