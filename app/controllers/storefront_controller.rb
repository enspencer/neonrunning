class StorefrontController < ApplicationController
  def hello
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end