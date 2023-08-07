class UserSerializer < ActiveModel::Serializer
  attributes :id,:rider_name,:city,:contact_number,:pay_type,:onboarding_type,:receiver_name,:receiver_number,:week_advance,:client_name,:aadhaar_card_number,:pan_number,:bank_account_details,:current_address,:vehicle_number,:charger_number,:remark,:battery_one,:battery_two,:security_amount,:amount

attribute :click_photo_image_url do |object|
    Rails.application.routes.url_helpers.rails_blob_url( self.object.click_photo_image, only_path: true) if  self.object.click_photo_image.attached?
  end

  attribute :aadhaar_card_image_url do |object|
    Rails.application.routes.url_helpers.rails_blob_url( self.object.aadhaar_card_image, only_path: true) if  self.object.aadhaar_card_image.attached?
  end

  attribute :pan_card_image_url do |object|
    Rails.application.routes.url_helpers.rails_blob_url( self.object.pan_card_image, only_path: true) if  self.object.pan_card_image.attached?
  end

  attribute :bank_account_details_image_url do |object|
    Rails.application.routes.url_helpers.rails_blob_url( self.object.bank_account_details_image, only_path: true) if  self.object.bank_account_details_image.attached?
  end
end
