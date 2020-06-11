class Image < ApplicationRecord
  mount_uploader :src,ImageUploader
  belongs_to :exhibition,optional: true

  validates :src, presence: true

end
