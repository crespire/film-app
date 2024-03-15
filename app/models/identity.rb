class Identity < ApplicationRecord
  belongs_to :user

  validates :provider, :uid, presence: true

  def self.from_omniauth(auth)
    identity = find_or_initialize_by(provider: auth.provider, uid: auth.uid)
    identity.token = auth.credentials.token
    identity.raw_data = auth.to_h

    if identity.user
      identity.save!
      identity.user
    else
      user = User.find_or_initialize_by(email: auth.info.email)

      if user.new_record?
        first, last = auth.info.name.split(' ')
        user.first_name = first
        user.last_name = last
        user.password = Devise.friendly_token
        user.password_confirmation = user.password
        user.skip_confirmation!
      end

      user.identities << identity
      user.save! if user.changed?
      user
    end
  end
end
