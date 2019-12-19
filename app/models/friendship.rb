class Friendship < ApplicationRecord

  belongs_to :user
  belongs_to :friends, :class_name => 'User'

end
