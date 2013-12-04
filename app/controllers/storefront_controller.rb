class StorefrontController < ApplicationController
  def hello
  end

  def index
    @products = Product.all
    if user_signed_in?
      @line_items = current_user.line_items.in_cart
    else
      @line_items = []
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end