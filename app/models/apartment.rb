class Apartment < ActiveRecord::Base
  validates :title, :description, presence: true
  
end
