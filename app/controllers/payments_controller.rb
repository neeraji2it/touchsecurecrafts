class PaymentsController < ApplicationController
  before_filter :payment, only: [:payment_pdf,:edit,:destroy,:update, :show,  :next_step, :thankyou]
  before_filter :verify_token, only: [:show,:payment_pdf]
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
    if !(params[:search].present? or params[:from_date].present?)
      @payments ||= Payment.order(created_at: :desc)
    elsif params[:search].present?
      @payments = Payment.where("email LIKE (?) OR customer_name LIKE (?) OR card_number LIKE (?)", "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}")
    elsif params[:from_date].present?
      @payments = Payment.where("date(created_at) BETWEEN '#{params[:from_date]}' AND '#{params[:end_date]}'")
    else
      @payments = []
    end
    render :layout => false
  end
  
  def resend
    @payment = Payment.find(params[:id])
    PaymentMailer.payment_confirmation(@payment).deliver
    redirect_to payments_path
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
    redirect_to payments_path
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








