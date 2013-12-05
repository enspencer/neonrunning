class LineItemsController < ApplicationController
  before_filter :authenticate_user!
  respond_to :json, :html

  
  def create
    product = Product.find(params[:product_id])
    product.size = params[:size]
    line_item = product.line_items.build(user: current_user)
    line_item.save

    respond_with(line_item) do |format|
      format.html {redirect_to :cart}
      format.json do
        render :json => line_item.as_json
      end
    end

  end

  def index
    # @line_items = current_user.line_items.in_cart

    respond_with do |format|
      format.html { current_user.line_items.in_cart}
      format.json {render :json => LineItem.in_cart}
        # TODO: Only get line items for the current user
        # render :json => current_user.line_items.in_cart.as_json
    end

  end

  def delete
    LineItem.find(params[:id]).destroy
    redirect_to :cart
  end
end