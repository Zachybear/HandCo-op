class Skill < ActiveRecord::Base

  has_many :skill_listings
  has_many :users, through: :skill_listings

  Skill.order(title: :asc)

end
