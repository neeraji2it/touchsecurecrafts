class PaymentMailer < ActionMailer::Base
  default from: "support@touchsecurecrafts.com"
  def payment_confirmation(payment)
    @payment = payment
    mail(to: [payment.email], subject: 'Please confirm payment and sign it')
  end
  
  def icici_payment_confirmation(payment)
    @payment = payment
    mail(to: [payment.email], subject: 'Please confirm payment and sign it')
  end

  def payment_pdf(payment)
    @payment = payment
    mail(to: [@payment.email,'support@touchsecurecrafts.com'], subject: 'Thankyou, Your Payment was confirmed and signed')
  end

  def icici_payment_pdf(payment)
    @payment = payment
    mail(to: [@payment.email,'service.touchsecurecrafts@gmail.com'], subject: 'Thankyou, Your Payment was confirmed and signed')
  end
end
