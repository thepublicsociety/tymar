class SendMail < ActionMailer::Base
  default from: "the.y.m.are.revolting@gmail.com"
  
  def send_mail(email, subject, message)
    @message = message
    mail to: email, subject: subject
  end
end