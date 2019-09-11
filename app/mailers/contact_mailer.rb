class ContactMailer < ApplicationMailer
  default from: 'spree@gmail.com'
 
  def thank_you_email(contact)
    @contact = contact
    @user = params[:user]
    @url  = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Thank you for giving response')
  end
end
