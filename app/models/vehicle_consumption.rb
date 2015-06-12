class VehicleConsumption < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :desk_supplie
  belongs_to :driver
end
