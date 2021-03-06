class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    if @order.save
      session[:order_id] = @order.id
        flash[:notice] = 'Added to your order.'
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js { render 'products/index' }
      end
      # redirect_to products_path
    else
      flash[:notice] = 'Item quantity must be filled out.'
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js { render 'products/index' }
      end
      # redirect_to products_path
    end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    if @order.save
      session[:order_id] = @order.id
        flash[:notice] = "Product has been removed from your order."
      @total = current_order.total_price
      respond_to do |format|
        format.html { redirect_to cart_path }
        format.js { render 'carts/destroy' }
      end
    else
      flash[:notice] = "There were some errors"
      respond_to do |format|
        format.html { redirect_to cart_path }
        format.js { render 'carts/destroy' }
      end
    end
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
