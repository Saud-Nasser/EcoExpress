class OrdersController < ApplicationController
    def create
    @client = Client.find(params[:client_id])
    @order = @client.orders.create(order_params)
    redirect_to client_path(@client)
  end
  def show
    @client = Client.find(params[:client_id])
        @order = @client.order
  end
  private
    def order_params
      params.require(:order).permit(:pickup, :details)
    end
end
