class Vehicle < ActiveRecord::Base
  belongs_to :vehicle_type
  belongs_to :vehicle_service
  belongs_to :provider
end
