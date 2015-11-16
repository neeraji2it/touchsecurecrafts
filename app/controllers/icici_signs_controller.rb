class IciciSignsController < ApplicationController
  def new
    @payment = IciciPayment.find(params[:icici_payment_id])
    @signature = IciciSign.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @signature = IciciSign.new(params[:icici_sign])
    if @signature.save
      @signature.icici_payment.update_attributes({is_signed: true, token: generated_payment_token, ip_address: request.remote_ip})
      PaymentMailer.icici_payment_pdf(@signature.icici_payment).deliver
      redirect_to "/payments/icicipay.php?amount=#{@signature.icici_payment.amount}"
    else
      redirect_to :back
    end
  end
end
