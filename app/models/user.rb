class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,:omniauthable  



  ratyrate_rater

  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"},
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  enum role: {admin: 1, user: 0}


  ATTRIBUTES_PARAMS=[:name, :email, :password, :password_confirmation, :avatar,
    :role]

    def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name   # assuming the user model has a name
    user.avatar = auth.info.avatar # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end

end

end
