class ClientsController < ApplicationController
    def show
    @client = Client.find(params[:id])
  end
  def new
  end

end
