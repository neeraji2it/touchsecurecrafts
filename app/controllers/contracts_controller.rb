class ContractsController < ApplicationController
  before_filter :payment, only: [:payment_pdf,:edit,:destroy,:update, :show]
  before_filter :verify_token, only: [:show,:payment_pdf]
  before_filter :require_http_for_contract_admin, :only => ['index']
  def new
    @payment = Contract.new
  end

  def create
    @payment = Contract.new(params[:contract])
    @payment.token = generated_contract_token
    if @payment.save
      redirect_to contract_url(@payment, signature_token: @payment.token)
    else
      render :new
    end
  end

  def index
    if !(params[:search].present? or params[:from_date].present?)
      @payments ||= Contract.order("created_at Desc").paginate :page => params[:icici_page], :per_page => 20
    elsif params[:search].present?
      @payments = Contract.where("email LIKE (?) OR customer_name LIKE (?) OR card_number LIKE (?)", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}").order("created_at Desc").paginate :page => params[:icici_page], :per_page => 20
    elsif params[:from_date].present?
      @payments = Contract.where("date(created_at) BETWEEN '#{params[:from_date]}' AND '#{params[:end_date]}'").order("created_at Desc").paginate :page => params[:icici_page], :per_page => 20
    else
      @payments = []
    end
    render :layout => false
  end
  
  def resend
    @payment = Contract.find(params[:id])
    PaymentMailer.contract_confirmation(@payment).deliver
    redirect_to contracts_path
  end

  def edit

  end

  def update
    if @payment.update_attributes(params[:icici_payment])
      redirect_to contract_url(@payment,signature_token: @payment.token)
    else
      render :edit
    end
  end

  def show
    @signature = ContractSign.new(contract_id: payment.id)
  end

  def payment_pdf
    render pdf: "#{@payment.product_name}"
  end

  def destroy
    @payment.destroy
    redirect_to contracts_path
  end

  private

  def payment
    @payment = Contract.find(params[:id])
  end

  def verify_token
    unless payment.token == params[:signature_token]
      #  gflash error: 'Unauthorized access!!'
      redirect_to root_path
    end
  end
end
