class ClientsController < ApplicationController
  def show
    @client = current_client
  end

  def update
    @client = current_client
    if @client.update(client_params)
      redirect_to client_path, notice: 'Información actualizada con éxito.'
    else
      render :show
    end
  end

  def destroy
    @client = current_client
    @client.destroy
    redirect_to root_path, notice: 'Cuenta cerrada con éxito.'
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :phone)
  end
end
