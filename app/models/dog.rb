class Dog < ApplicationRecord
  belongs_to :size
  has_and_belongs_to_many :breeds
  has_and_belongs_to_many :volunteers
  has_many :images
end
