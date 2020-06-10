class Exhibition < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true
  validates :price, presence: true
  validates :explain,presence: true
  validates :mail, presence: true
end
