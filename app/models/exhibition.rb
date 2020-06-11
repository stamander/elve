class Exhibition < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :name, presence: true
  validates :price, presence: true 
  validates :explain,presence: true

end
