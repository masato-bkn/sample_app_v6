class User < ApplicationRecord
  before_save {email.downcase!} # 破壊的メソッド
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, length: {maximum: 255},
              format: { with: VALID_EMAIL_REGEX },
              uniqueness: false
  has_secure_password
  validates :password,presence:true,length: {minimum: 6}
end
