require_relative 'config/environment'

UserMailer.welcome_email.deliver_now
