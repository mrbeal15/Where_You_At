class User < ActiveRecord::Base

  has_many :groupings
  has_many :groups, through: :groupings#, foreign_key: :user_id
  has_many :created_groups, class_name: "Group", foreign_key: :admin_id

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, format: { with: /@/, message: "Sorry, that is not a valid email address"}
  # validates :phone, presence: true


  has_secure_password

  # def full_name
  #   [first_name, last_name].join(' ')
  # end

  # def full_name=(name)
  #   split = name.split(' ', 2)
  #   self.first_name = split.first
  #   self.last_name = split.last
  # end


end
