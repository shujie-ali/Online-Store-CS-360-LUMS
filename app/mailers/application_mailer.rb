# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
  default from: "dr.shujaat.ali786@gmail.com"
end
 
# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
  default from: 'dr.shujaat.ali786@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://one-point-shujie-ali1.c9users.io/users/new'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  def send_notification(email)
    @user = user
    @url  = 'https://one-point-shujie-ali1.c9users.io/users/new'
    mail(to: @user, subject: 'Welcome to My Awesome Site')
  end
end