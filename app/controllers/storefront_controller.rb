class StorefrontController < ApplicationController
  def hello
  end

  def index
    @products = Product.all
  end
end
