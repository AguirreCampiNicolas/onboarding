class ProductsController < ApplicationController
  before_action :authenticate_client!

  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all

    filter_params.each do |key, value|
      @products = @products.where(key => true) if value == '1'
    end

    @products = @products.page(params[:page]).per(10)
    render :index
  end

  private

  def authenticate_client!
    unless client_signed_in?
      redirect_to new_client_session_path, alert: "You need to sign in as a client to access this page."
    end
  end

  def filter_params
    params.permit(:for_sharing, :vegan_or_vegetarian, :sugar_free, :no_tacc, :apetizer, :commit)
  end
end
