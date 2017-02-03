class UserNotifier < ApplicationMailer
  default :from => ENV["SENDGRID_EMAIL_FROM"]

  def send_non_pb_email(customer_email)
    mail(:to => customer_email, :subject => "Your Summit Broadband Bill")
  end

  def send_pb_email(customer_email)
    mail(:to => customer_email, :subject => "Your Summit Broadband Bill")
  end

  def send_dais_email(customer_email)
    mail(:to => customer_email, :subject => "Your DAIS Bill")
  end  	
end
