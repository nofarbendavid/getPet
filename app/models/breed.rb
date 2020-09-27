class Breed < ApplicationRecord
  has_and_belongs_to_many :dogs
  validates :breed_name, uniqueness: true, presence: true
end
