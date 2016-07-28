class Location < ActiveRecord::Base
  has_many :slots
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
