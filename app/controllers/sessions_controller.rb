class SessionsController < ApplicationController
  def new
  end

  def create
    client = Client.find_by_email(params[:session][:email].downcase)
    if client && client.authenticate(params[:session][:password])
      sign_in client
      redirect_to client
    else
      flash.now[:error] = 'Invalid email/password combination' 
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
