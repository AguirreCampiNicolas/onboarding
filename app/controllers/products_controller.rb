class ProductsController < ApplicationController
  before_action :authenticate_client!

  def index
    @products = Product.all
    if params[:filters].present?
      filters = params[:filters].split(",")
      query = []
      values = []

      filters.each do |filter|
        query << "#{filter} = ?"
        values << true
      end

      puts "query: #{query.join(" AND ")}, values: #{values} "

      @products = @products.where(query.join(" AND "), *values)
    end

    if params[:sort_by].present?
      sort_by = params[:sort_by] == "price_asc" ? "price ASC" : "price DESC"
      @products = @products.order(sort_by)
    end

    @products.page(params[:page]).per(10)

    respond_to do |format|
      if params[:filters].present? or params[:sort_by].present?
        format.html { render partial: "products/products", locals: { products: @products } }
      else
        format.html
      end
    end
  end

  private

  def authenticate_client!
    unless client_signed_in?
      redirect_to new_client_session_path, alert: "You need to sign in as a client to access this page."
    end
  end
end
