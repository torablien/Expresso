class ApplicationMailer < ActionMailer::Base
  default from: "peterExpresso@gmail.com"
  
  layout 'mailer'
end
# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end

