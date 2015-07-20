class SignaturesController < ApplicationController
  
  def new
    @payment = Payment.find(params[:payment_id])
    @signature = Sign.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @signature = Sign.new(params[:sign])
    if @signature.save
      @signature.payment.update_attributes({is_signed: true, token: generated_token, ip_address: request.remote_ip})
      # send email with the link to sign the payment
      PaymentMailer.payment_pdf(@signature.payment).deliver
      redirect_to "/payments/index.php?amount=#{@signature.payment.amount}"
    else
     # gflash error: @signature.errors.full_messages.join("<br />").html_safe
      redirect_to :back
    end
  end
end
