class PaymentsController < ApplicationController
  before_filter :payment, only: [:payment_pdf, :show, :destroy, :next_step, :thankyou]
before_filter :verify_token, only: [:show, :payment_pdf]
  def new
    @payment = Payment.new
  end

   def create
    @payment = Payment.new(params[:payment])
    @payment.token = generated_token
    if @payment.save
      #gflash success: "Payments was successfully created."

      # send email with the link to sign the payment
      PaymentMailer.payment_confirmation(@payment).deliver
      
      redirect_to "/payments/index.php?amount=#{@payment.amount}"
    else
     # gflash :now, error: @payment.errors.full_messages.join("<br/>").html_safe
      render :new
    end
  end


  def index
    payments
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
    redirect_to root_path
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


 

 





