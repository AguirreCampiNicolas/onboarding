class OrdersController < ApplicationController
  def new
    @order = current_client.orders.build
    @order.delivery_addresses.build
    @order.product = Product.find(params[:product_id])
  end

  def create
    @order = current_client.orders.build(order_params)
    @order.product = Product.find(params[:order][:product_id])
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
      :rut, :bussines_name, :quantity, :product_id,
      :sourprise_shipping, :personalization, :retry_shipping, delivery_addresses_attributes: [:full_name, :contact, :date, :time, :address, :ship_cost]
    )
  end
end
