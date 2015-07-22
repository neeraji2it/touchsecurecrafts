class PaymentsController < ApplicationController
  before_filter :payment, only: [:payment_pdf,:edit,:update, :show, :destroy, :next_step, :thankyou]
  before_filter :verify_token, only: [:show, :payment_pdf]
  before_filter :require_http_for_admin, :only => ['index']
  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(params[:payment])
    @payment.token = generated_token
    if @payment.save
      # send email with the link to sign the payment
      #PaymentMailer.payment_confirmation(@payment).deliver
      redirect_to payment_url(@payment, signature_token: @payment.token)
      #redirect_to "/payments/index.php?amount=#{@payment.amount}"
    else
     # gflash :now, error: @payment.errors.full_messages.join("<br/>").html_safe
     render :new
   end
 end


 def index
  @payments = params[:search] ? Payment.search(params[:search]) : Payment.all
  render :layout => false
end

def edit

end

def update

  if @payment.update_attributes(params[:payment])
    redirect_to payment_url(@payment,signature_token: @payment.token)
  else
    render :edit
  end
end

def show
 @signature = Sign.new(payment_id: payment.id)
end

def payment_pdf
  render pdf: "#{@payment.product_name}"
end

def next_step
end

def thankyou
end

def destroy
  @payment.destroy
   # gflash success: 'Payment was successfully destroyed.'
   redirect_to :back
 end

 private

 def payment
   @payment = Payment.find(params[:id])
 end

 def verify_token
  unless payment.token == params[:signature_token]
    #  gflash error: 'Unauthorized access!!'
    redirect_to root_path
  end
end


end










