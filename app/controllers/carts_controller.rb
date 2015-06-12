class CartsController < ApplicationController
  def index
    @cart = current_cart
    @user_products = current_cart.line_items
    @order = @cart.orders.new(params[:order])
    @comment = Comment.new
  end
  
  def edit_lineitem
    @line_item = LineItem.find(params[:id])
    @comment = Comment.new
    respond_to do |format|
      format.js
    end
  end
  
  def update_lineitem
    @cart = current_cart
    @user_products = current_cart.line_items
    @order = @cart.orders.new(params[:order])
    @line_item = LineItem.find(params[:id])
    @comment = Comment.new
    if params[:line_item][:quantity].to_i == 0
      @line_item.destroy
      respond_to do |format|
        format.js
      end
    else
      if @line_item.product.qty >= params[:line_item][:quantity].to_i
        @line_item.update_attribute(:quantity, params[:line_item][:quantity])
        respond_to do |format|
          format.js
        end
      else
        respond_to do |format|
          format.js
        end
      end
    end
  end

  def destroy
    @cart = LineItem.find(params[:id])
    if @cart.destroy
      if !current_cart.line_items.present?
        current_cart.destroy
        session[:cart] = nil
      end
      redirect_to carts_path
    end
  end


  def return
      @notification = Twocheckout::ValidateResponse.purchase({:sid => 901278849, :secret => "ZDYxYjUyZDUtOTYyZS00ZTA4LTk1MGMtZjYxODg2OTdiZWRh", :order_number => params['order_number'], :total => params['total'], :key => params['key']})

      @cart = Cart.find(params['merchant_order_id'])
      p "******************************"
      p @notification[:code]
      p "*****************************"
      begin
        if @notification[:code] == "PASS"
          @cart.status = 'success'
          @cart.purchased_at = Time.now
          @order = Order.create(
            :net_payment => params['total'],
            :card_holder_name => params['card_holder_name'],
            :status => 'pending',
            :order_number => params['order_number']

            )
          reset_session
          flash[:notice] = "Your order was successful! We will contact you directly to confirm before delivery."
          redirect_to root_url
        else
          @cart.status = "failed"
          flash[:notice] = "Error validating order, please contact us for assistance."
          redirect_to carts_url
        end
        ensure
        @cart.save
      end
    end

end