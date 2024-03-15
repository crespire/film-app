class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  has_many :rolls, dependent: :destroy
  # We only set up Google OAuth2 for now
  has_many :identities, dependent: :destroy

  enum :role, { user: 0, admin: 1, deactivated: 2 }, default: :user
end
