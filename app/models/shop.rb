class Shop < ApplicationRecord

  validates :name, presence: true
  validates :kana, presence: true
  validates :phone_number,presence: true
  validates :mail, presence: true
end
