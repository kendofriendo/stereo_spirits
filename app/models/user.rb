class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[github]
  attr_writer :login

    has_many :band_memberships
    has_many :bands, through: :band_memberships
def login
  @login || self.username || self.email
end

def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0, 20]
    user.username = auth.info.nickname   # assuming the user model has a name
    #user.image = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
  user.skip_confirmation!
  end
end

def self.new_with_session(params, session)
  super.tap do |user|
    if data = session["devise.github_data"] && session["devise.github_data"]["extra"]["raw_info"]
      user.email = data["email"] if user.email.blank?
      user.username = data["nickname"] if user.username.blank?
    end
  end
end

def self.find_first_by_auth_conditions(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  else
    if conditions[:username].nil?
      where(conditions).first
    else
      where(username: conditions[:username]).first
    end
  end
end

validates :username, presence: true, uniqueness: { case_sensitive: false }


end