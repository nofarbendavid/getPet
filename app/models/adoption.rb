class Adoption < ApplicationRecord
  belongs_to :dog
  belongs_to :person
end
