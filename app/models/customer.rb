class Customer < ApplicationRecord
  has_one_attached :image
  validates :full_name, :phone_number, presence: true
end
