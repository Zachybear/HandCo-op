class User < ActiveRecord::Base

  #has_secure_password

  has_many :tool_listings
  has_many :tools, through: :tool_listings

  has_many :skill_listings
  has_many :skills, through: :skill_listings

end
