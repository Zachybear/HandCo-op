class User < ActiveRecord::Base

  has_many :tool_listings
  has_many :tools, through: :tool_listings

  has_many :skill_listings
  has_many :skills, through: :skill_listings

  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }


end
