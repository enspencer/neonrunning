class StorefrontController < ApplicationController
  def hello
  end

  def index
    @products = Product.all
    @line_items = current_user.line_items.in_cart
  end

  def show
    @product = Product.find(params[:id])
  end

end