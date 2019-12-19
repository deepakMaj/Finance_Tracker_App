class ChangeToUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :friendships, :users_id, :user_id
  end
end
