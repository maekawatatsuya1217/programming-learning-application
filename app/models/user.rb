class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

         VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
         validates :password, format: { with: VALID_PASSWORD_REGEX }
         
         with_options presence: true do
            validates :name
            validates :profile
         end

         has_many :blogs
         has_many :comments
         has_many :events
         has_many :forms
end