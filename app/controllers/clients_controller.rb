class ClientsController < ApplicationController
    before_action :signed_in_client, only: [:index, :edit, :update]
    before_action :correct_client,   only: [:edit, :update]

    def show
    @client = Client.find(params[:id])
  end

  def new
   @client = Client.new
  end
  def create
    @client = Client.new(params[:client])
    if @client.save
      sign_in @client
      #WelcomeMailer.with(client: @client).welcome_send.deliver_now
      flash[:success] = "Welcome to EcoExpress App!"
      redirect_to @client

    else
      render 'new'
    end
  end
    def edit
    @client = Client.find(params[:id])
  end
  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
      flash[:success] = "Profile updated"
      sign_in @client
      redirect_to @client     
    else
      render 'edit'
    end
  end
  def index
    @client = Client.all
  end
  private

    def signed_in_client
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
    def correct_client
      @client = Client.find(params[:id])
      redirect_to(root_url) unless current_client?(@client)
    end
end
