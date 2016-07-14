class ParkRecord < ActiveRecord::Base
  belongs_to :slot
  belongs_to :vehicle
end
