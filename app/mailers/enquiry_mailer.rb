# frozen_string_literal: true

class EnquiryMailer < ApplicationMailer
  default from: Rails.application.credentials.contact_email

  def notify_admin
    @email = params[:email]
    @name = params[:name]
    @message = params[:message]

    mail(
      to: Rails.application.credentials.contact_email,
      subject: "New Enquiry from #{@email}"
    )
  end

  def user_confirmation
    @email = params[:email]

    mail(
      to: @email,
      subject: t('mailers.enquiry.user_confirmation.subject')
    )
  end
end
