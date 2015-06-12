class Payment < ActiveRecord::Base
  belongs_to :provider
  belongs_to :payment_type
end
