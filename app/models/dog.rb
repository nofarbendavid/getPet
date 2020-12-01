class Dog < ApplicationRecord
  belongs_to :size
  #create 2 methods on Dog: breeds, breed_ids
  has_and_belongs_to_many :breeds
  has_and_belongs_to_many :volunteers

  validates_presence_of :name
  has_many_attached :images

  def size_name
    # self.size.size_name.capitalize
    size.size_name.capitalize
  end
end
