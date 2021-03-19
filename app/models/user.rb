class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :omniauthable
  attr_writer :login

    has_many :gigs
    has_many :bands, through: :gigs

def login
  @login || self.username || self.email
end

end
