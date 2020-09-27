class Adoption < ApplicationRecord
  belongs_to :dog
  belongs_to :person

  validates_presence_of :start_date, :status
end
