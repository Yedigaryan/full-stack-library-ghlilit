class User < ApplicationRecord
        has_many :books,  dependent: :destroy
        before_save { self.email = email.downcase }
        VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
        validates :name, presence: true , length: {maximum: 50}
        validates :description, presence: true, length: {maximum: 255}
        validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
end
