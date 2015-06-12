class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  belongs_to :sector
  belongs_to :job
  belongs_to :state
  belongs_to :city
  belongs_to :foothold
  belongs_to :affiliate
  belongs_to :work

  validates_presence_of :name

end
