class ContractSignsController < ApplicationController
  def new
    @payment = Contract.find(params[:contract_id])
    @signature = ContractSign.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @signature = ContractSign.new(params[:contract_sign])
    if @signature.save
      @signature.contract.update_attributes({is_signed: true, token: generated_contract_token, ip_address: request.remote_ip})
      # send email with the link to sign the payment
      PaymentMailer.contract_pdf(@signature.contract).deliver
      redirect_to "/payments/index.php?amount=#{@signature.contract.amount}"
    else
     # gflash error: @signature.errors.full_messages.join("<br />").html_safe
      redirect_to :back
    end
  end
end
