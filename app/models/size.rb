class Size < ApplicationRecord
  has_many :dogs
  validates :size_name, uniqueness: true, presence: true

  scope :with_order, -> {order(size_name: :desc)}
end
