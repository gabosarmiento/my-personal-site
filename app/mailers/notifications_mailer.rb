class NotificationsMailer < ActionMailer::Base
  default :from => "interesado@gabrielsarmiento.com"
  default :to => ENV["GMAIL_USERNAME"]

  def new_message(message)
    @message = message
    mail(:subject => "GS - interesados")
  end

end
