# frozen_string_literal: true

require_relative 'boot'
require 'rails'
require 'active_model/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'

Bundler.require(*Rails.groups)

module YellowBrickStays
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w[assets tasks])
    config.generators.system_tests = nil

    config.action_mailer.smtp_settings = {
      address: 'smtp.office365.com',
      port: 587,
      domain: Rails.application.credentials.email_domain,
      user_name: Rails.application.credentials.email_username,
      password: Rails.application.credentials.email_password,
      authentication: :login,
      enable_starttls_auto: true
    }
    config.action_mailer.delivery_method = :smtp
  end
end
