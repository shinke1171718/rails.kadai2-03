class Room < ApplicationRecord
  mount_uploader :room_image, AvatarUploader

  has_many_attached :photos
end
