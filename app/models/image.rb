class Image < ApplicationRecord
  belongs_to :dog
  validates :image_url, uniqueness: true, presence: true
end
