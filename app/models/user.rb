class User < ApplicationRecord
  after_create :welcome_send
  after_create :attribute_favorite

  has_many :lessons, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :favorite, dependent: :destroy
  has_many :rates
  has_many :proposals

  
  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def attribute_favorite
    Favorite.create(user: self)
  end

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
