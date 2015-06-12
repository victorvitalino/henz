class Curriculum < ActiveRecord::Base

  enum :unit => [:br040, :br060]
  enum :field => [:obra, :geral]
  
  validates_presence_of :name, :lastname, :file, :email, :phone, :unit, :field

  mount_uploader :file, FileUploader

end
