class Location < ApplicationRecord
  validates :country, :city, :postal_code, :street, presence: true
end
