class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  def upload_image_to_cloudinary
    Cloudinary::Uploader.upload(photo.path, public_id: first_name)
  end
end
