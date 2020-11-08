class ClientsController < ApplicationController
    def show
    @client = Client.find(params[:id])
  end

  def new
   @client = Client.new
  end
  def create
    @client = Client.new(params[:client])
    if @client.save
      flash[:success] = "Welcome to EcoExpress App!"
      redirect_to @client

    else
      render 'new'
    end
  end
end
