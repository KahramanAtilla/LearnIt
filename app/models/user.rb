class User < ApplicationRecord
  after_create :welcome_send


  has_many :lessons

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
