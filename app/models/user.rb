class User < ApplicationRecord
  include ActiveStorage::Blob::Analyzable
  # validates :rider_name, :city, presence: true
  # validates :contact_number, presence: true, format: { with: /\A\d+\z/, message: "only allows numbers" }
  enum onbording_type: ['nbw','bw']
  enum pay_type: ['cash', 'online']
  # validates :aadhaar_card_image, presence: true
  # validates :pan_card_image, presence: true
  # validates :bank_account_details_image, presence: true

  has_one_attached :aadhaar_card_image
  has_one_attached :pan_card_image
  has_one_attached :bank_account_details_image
  has_one_attached :click_photo_image
end
