class UserMailer < ApplicationMailer
  def welcome_email
    mail(to: 'oleksandr.savchuk@lasoft.org', subject: 'Welcome to My Awesome Site')
  end
end
