class IciciPaymentsController < ApplicationController
  before_filter :payment, only: [:payment_pdf,:edit,:destroy,:update, :show]
  before_filter :verify_token, only: [:show,:destroy,:payment_pdf]
  before_filter :require_http_for_admin, :only => ['index']
  def new
    @payment = IciciPayment.new
  end

  def create
    @payment = IciciPayment.new(params[:icici_payment])
    @payment.token = generated_payment_token
    if @payment.save
      redirect_to icici_payment_url(@payment, signature_token: @payment.token)
    else
     render :new
   end
 end

 def index
 @payments = params[:search] ? IciciPayment.search(params[:search]) : IciciPayment.all
 render :layout => false
end

def edit

end

def update

  if @payment.update_attributes(params[:icici_payment])
    redirect_to payment_url(@payment,signature_token: @payment.token)
  else
    render :edit
  end
end

def show
 @signature = IciciSign.new(icici_payment_id: payment.id)
end

def payment_pdf
  render pdf: "#{@payment.product_name}"
end

def destroy
  @payment.destroy
  redirect_to :back
end

 private

 def payment
   @payment = IciciPayment.find(params[:id])
 end

 def verify_token
  unless payment.token == params[:signature_token]
    #  gflash error: 'Unauthorized access!!'
    redirect_to root_path
  end
end

end
