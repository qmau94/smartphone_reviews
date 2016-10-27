class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews

  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"},
    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  enum role: {admin: 1, user: 0}

  ATTRIBUTES_PARAMS=[:name, :email, :password, :password_confirmation, :avatar,
    :role]
end
