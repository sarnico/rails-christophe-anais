class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :lastname, presence: true
  #validates :firstname, presence: true
  #validates :phonenumber, presence: true
  validates :email, uniqueness: true

  validates_presence_of :lastname
validates_presence_of :firstname
validates_presence_of :phonenumber
validates_presence_of :email



  has_and_belongs_to_many :appointments

end
