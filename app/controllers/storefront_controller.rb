class StorefrontController < ApplicationController
  respond_to :json, :html
  def hello
  end

  def index
    @products = Product.all
    respond_with(@products) do |format|
      format.html
      format.json { render :json => @products.as_json}
    end

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