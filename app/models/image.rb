class Image < ApplicationRecord
  mount_uploader :src,ImageUploader
  belongs_to :exhibition

  validates :src, presence: true

end
