class Dog < ApplicationRecord
  belongs_to :size
  #create 2 methods on Dog: breeds, breed_ids
  has_and_belongs_to_many :breeds
  has_and_belongs_to_many :volunteers
  has_many :images

  validates_presence_of :name , :is_male

  def size_name
    # self.size.size_name.capitalize
    size.size_name.capitalize
  end
end
