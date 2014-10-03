if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.gmail.com',
    :port           => '587',
    :authentication => :plain,
    user_name: Rails.application.secrets.gmail_username,
    password: Rails.application.secrets.gmail_password,
    :domain         => 'gabrielsarmiento.com',
    :enable_starttls_auto => true
  }
end