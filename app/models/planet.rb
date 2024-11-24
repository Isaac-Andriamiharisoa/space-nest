class Planet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # has_one_attached :photo

  # def upload_image_to_cloudinary
  #   Cloudinary::Uploader.upload(photo.path, public_id: name)
  # end
end
