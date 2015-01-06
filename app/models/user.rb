class User < ActiveRecord::Base

  has_many :tool_listings
  has_many :tools, through: :tool_listings

  has_many :skill_listings
  has_many :skills, through: :skill_listings

  has_secure_password

  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end

end