class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :courses
  has_many :sections, through: :courses
  has_many :vocabularies
end
