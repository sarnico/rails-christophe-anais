class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :lastname, presence: true
  validates :firstname, presence: true
  validates :phonenumber, presence: true, uniqueness: true, length: { is: 10 }, numericality: { only_integer: true }
end
