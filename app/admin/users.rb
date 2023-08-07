ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :rider_name, :city, :email, :contact_number
  #
  # or
  #
  # permit_params do
  #   permitted = [:rider_name, :city, :email, :contact_number]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  show do
    attributes_table do
      row :aadhaar_card_image do |ad|
        image_tag url_for(ad.aadhaar_card_image)
      end
      row :pan_card_image do |ad|
        image_tag url_for(ad.pan_card_image)
      end
      row :bank_account_details_image do |ad|
        image_tag url_for(ad.bank_account_details_image)
      end
      row :click_photo_image do |ad|
        image_tag url_for(ad.click_photo_image)
      end
    end
  end


  
end
