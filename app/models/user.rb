class User < ActiveRecord::Base

  has_many :groupings
  has_many :groups, through: :groupings#, foreign_key: :user_id
  has_many :created_groups, class_name: "Group", foreign_key: :admin_id

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /@/, message: "Sorry, that is not a valid email address"}
  validates :phone, presence: true


  has_secure_password

end
