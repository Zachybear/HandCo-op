class Rating < ActiveRecord::Base
  belongs_to :skill_listing
  belongs_to :user
end
