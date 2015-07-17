class PaymentMailer < ActionMailer::Base
  default from: "from@example.com"
  def payment_confirmation(payment)
    @payment = payment
    mail(to: @payment.email, subject: 'Please confirm payment and sign it')
  end

  def payment_pdf(payment)
    @payment = payment
    mail(to: @payment.email, subject: 'Thankyou, Your Payment was confirmed and signed')
  end
end
