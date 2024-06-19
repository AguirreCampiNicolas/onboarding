class OrdersController < ApplicationController
  # before_action :set_order, only: %i[show edit update destroy]

  def new
    @order = current_client.orders.build
    @order.delivery_addresses.build
  end

  def create
    @order = current_client.orders.build(order_params)
    @order.total = @order.quantity * @order.product.price

    if @order.save!
      redirect_to order_success_path(@order), notice: 'Compra realizada con éxito.'
    else
      @product = Product.find(order_params[:product_id])
      render :new
    end
  end

  def success
  end

  private

  def order_params
    params.require(:order).permit(
      :rut, :bussines_name, :quantity, :product_id, :receiver_full_name, :receiver_contact_number,
      :ship_date, :ship_time, :ship_address, :ship_cost,
      :sourprise_shipping, :personalization, :retry_shipping
    )
  end

  # def set_order
  #   @order = current_client.orders.find(params[:id])
  # end
end
