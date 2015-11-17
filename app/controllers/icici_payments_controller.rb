class IciciPaymentsController < ApplicationController
  before_filter :payment, only: [:payment_pdf,:edit,:destroy,:update, :show]
  before_filter :verify_token, only: [:show,:payment_pdf]
  before_filter :require_http_for_icici_admin, :only => ['index']
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
    if !(params[:search].present? or params[:from_date].present?)
      @payments ||= IciciPayment.order(created_at: :desc)
    elsif params[:search].present?
      @payments = IciciPayment.where("email LIKE (?) OR customer_name LIKE (?) OR card_number LIKE (?)", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}")
    elsif params[:from_date].present?
      @payments = IciciPayment.where("date(created_at) BETWEEN '#{params[:from_date]}' AND '#{params[:end_date]}'")
    else
      @payments = []
    end
    render :layout => false
  end
  
  def resend
    @payment = IciciPayment.find(params[:id])
    PaymentMailer.icici_payment_confirmation(@payment).deliver
    redirect_to icici_payments_path
  end

  def edit

  end

  def update
    if @payment.update_attributes(params[:icici_payment])
      redirect_to icici_payment_url(@payment,signature_token: @payment.token)
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
    redirect_to icici_payments_path
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
