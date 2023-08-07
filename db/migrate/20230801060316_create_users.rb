class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :rider_name
      t.string :city
      t.integer :security_amount
      t.integer :contact_number#10di
      t.integer :pay_type #string
      t.integer :onboarding_type #stirng
      t.string  :receiver_name
      t.integer :receiver_number#10digit
      t.integer :week_advance
      t.integer :amount
      t.string :client_name
      t.integer :aadhaar_card_number#12digit
      t.integer :pan_number  #12
      t.integer :bank_account_details
      t.string :current_address
      t.integer :vehicle_number
      t.integer :charger_number
      t.integer :battery_one
      t.integer :battery_two #click photo
      t.string :remark#string

      t.timestamps
    end
  end
end
