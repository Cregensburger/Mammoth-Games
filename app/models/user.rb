class User < ActiveRecord::Base
	has_many :comments
	has_one :bio

  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true  
end