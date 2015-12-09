class Group < ActiveRecord::Base
  has_many :groupings
  has_many :users, through: :groupings
  belongs_to :admin, class_name: "User"
end
