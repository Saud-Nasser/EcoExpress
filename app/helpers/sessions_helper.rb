module SessionsHelper
  
  def sign_in(client)
    cookies.permanent[:remember_token] = client.remember_token
    self.current_client = client
  end
  
  def signed_in?
    !current_client.nil?
  end
  
  def current_client=(client)
    @current_client = client
  end
  
   def current_client
    @current_client ||= Client.find_by_remember_token(cookies[:remember_token])
  end
  def sign_out
    self.current_client = nil
    cookies.delete(:remember_token)
  end
end
