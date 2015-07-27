class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :style
  has_many :courses
end
