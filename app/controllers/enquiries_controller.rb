# frozen_string_literal: true

class EnquiriesController < ApplicationController
  def new; end

  def create
    notify_admin
    user_confirmation
    redirect_to root_path
  end

  private

  def user_confirmation
    EnquiryMailer.with(email: enquiry_params[:email])
                 .user_confirmation.deliver_later
  end

  def notify_admin
    EnquiryMailer.with(
      name: enquiry_params[:name],
      email: enquiry_params[:email],
      message: enquiry_params[:message]
    ).notify_admin.deliver_later
  end

  def enquiry_params
    params.permit(
      :name,
      :email,
      :message,
      :authenticity_token,
      :commit
    )
  end
end
