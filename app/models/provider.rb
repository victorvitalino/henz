class Provider < ActiveRecord::Base
  belongs_to :state
  belongs_to :city
  belongs_to :work
  belongs_to :affiliate
  belongs_to :provider_type
end
