class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_treats
  has_many :treats, through: :dog_treats
end
