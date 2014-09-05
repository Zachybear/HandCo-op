class Tool < ActiveRecord::Base

  has_many :tool_listings
  has_many :users, through: :tool_listings

end
