class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reservations
<<<<<<< HEAD

  before_create :generate_authentication_token

  def generate_authentication_token
    self.authentication_token = Devise.friendly_token
  end
=======
>>>>>>> c1b2a124d4107376612ce2ac2214eb353808f9b5
end
