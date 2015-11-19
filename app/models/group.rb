class Group < ActiveRecord::Base
  has_many :groupings
  has_many :users, through: :groupings#, class_name: "User"
  belongs_to :admin, class_name: "User"

end
