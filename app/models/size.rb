class Size < ApplicationRecord
  has_many :dogs
  validates :size_name, uniqueness: true, presence: true
end
