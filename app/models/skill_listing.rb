class SkillListing < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  has_many :ratings
end
