class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    if @users.present?
      render json:  @users, each_serializer: UserSerializer
    end
  end

  def show
    @user = User.find(params[:id])
    if @user.present?
      render json: @user, each_serializer: UserSerializer
    else
      render json: {message: "user not present with this id"}, status: :not_found
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        # @user.aadhaar_card_image(params[:aadhaar_card_image])
     render json: UserSerializer.new(@user).serializable_hash, status: :created

    else
      render json: {errors: [
        {user: @user.errors.full_messages},
      ]}, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      render json:UserSerializer.new(@user).serializable_hash, status: :created
        else
          render json: {errors: [
              {contact: @user.errors.full_messages},
          ]}, status: :unprocessable_entity
        end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:rider_name, :city, :security_amount, 
      :contact_number,:pay_type,:onboarding_type,
      :receiver_name,:receiver_number,:week_advance,:client_name,
      :aadhaar_card_number,:pan_number,
      :bank_account_details,:current_address,
      :vehicle_number,:charger_number,:remark,:aadhaar_card_image,
      :pan_card_image,:bank_account_details_image,:battery_one,:battery_two,:amount,:click_photo_image)
  end
end
#amount 