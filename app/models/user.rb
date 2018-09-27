class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favourites
  has_many :videos, through: :favourites
  validates :mail, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  validates :username, presence: true, on: :create
end
