class HomeController < ApplicationController
  before_action :authenticate_client!

  def index
    @products = Product.page(params[:page]).per(10)
  end

  private
  def authenticate_client!
    unless client_signed_in?
      redirect_to new_client_session_path, alert: "You need to sign in as a client to access this page."
    end
  end
end
