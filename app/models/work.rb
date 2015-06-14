class Work < ActiveRecord::Base
  belongs_to :work_type
  belongs_to :affiliate
end
