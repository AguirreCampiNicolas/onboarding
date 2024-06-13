class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
  end

  def create
    @order = Order.new(order_params)
    # puts "CURRENT CLIENT: #{current_client.inspect}"
    # puts "CURRENT USER: #{current_user.inspect}"
    @order.user_id = current_client.id
    @order.total = @order.quantity * @order.product.price

    if @order.save!
      redirect_to root_path, notice: 'Compra realizada con éxito.'
    else
      @product = Product.find(order_params[:product_id])
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :rut, :bussines_name, :quantity, :product_id, :receiver_full_name, :receiver_contact_number,
      :ship_date, :ship_time, :ship_address, :ship_cost,
      :sourprise_shipping, :personalization, :retry_shipping
    )
  end
end
