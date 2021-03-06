class Book < ApplicationRecord
  belongs_to :user
  validates :title, presence: true , length: {maximum: 50}
  validates :description, presence: true, length: {maximum: 255}
end
