class User < ActiveRecord::Base
  has_secure_password
  has_many :events

  validates :username, :password, presence: true
  validates_uniqueness_of :username
  validates :username, length: {minimum: 4}
  validates :password, length: {minimum: 4}

end
