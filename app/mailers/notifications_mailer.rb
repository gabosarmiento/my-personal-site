class NotificationsMailer < ActionMailer::Base
  default :from => "interesado@gabrielsarmiento.com"
  default :to => Rails.application.secrets.gmail_username

  def new_message(message)
    @message = message
    mail(:subject => "GS - interesados")
  end

end
