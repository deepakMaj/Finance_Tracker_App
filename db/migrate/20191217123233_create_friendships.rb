class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :users
      t.belongs_to :friends, class: 'User'
      t.timestamps
    end
  end
end
