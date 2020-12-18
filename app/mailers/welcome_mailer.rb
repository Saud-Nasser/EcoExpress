class WelcomeMailer < ApplicationMailer
   default from: 'info@ecoexpress.com'

  def welcome_send
    @client = params[:client]
    mail(to: @client.email, subject: 'Welcome to EcoExpress')
  end
end
