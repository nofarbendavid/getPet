class Volunteer < ApplicationRecord
  has_and_belongs_to_many :dogs

  validates_presence_of :first_name, :last_name, :phone_number, :is_active
end
