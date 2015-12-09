class User < ActiveRecord::Base

  has_many :groupings
  has_many :groups, through: :groupings
  has_many :created_groups, class_name: "Group", foreign_key: :admin_id

  has_secure_password

end
