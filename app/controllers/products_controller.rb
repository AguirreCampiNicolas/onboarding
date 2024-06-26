class ProductsController < ApplicationController
  before_action :authenticate_client!

  def index
    @products = Product.all

    @products = @products.where(type: params[:type]) if params[:type].present?
    @products = @products.where(vegan_or_vegetarian: true) if params[:vegan_or_vegetarian].present?
    @products = @products.where(sugar_free: true) if params[:sugar_free].present?
    @products = @products.where(no_tacc: true) if params[:no_tacc].present?
    @products = @products.where(apetizer: true) if params[:apetizer].present?
    @products = @products.where(for_sharing: true) if params[:for_sharing].present?
    @products = @products.where("name LIKE ?", "%#{params[:search]}%") if params[:search].present?

    if params[:order_by].present?
      @products = @products.order("price #{params[:order_by]}")
    end
  end

  private

  def authenticate_client!
    unless client_signed_in?
      redirect_to new_client_session_path, alert: "You need to sign in as a client to access this page."
    end
  end
end
