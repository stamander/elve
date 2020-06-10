class Shop < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true
  validates :kana, presence: true
  validates :phone_number,presence: true
  validates :mail, presence: true
end
