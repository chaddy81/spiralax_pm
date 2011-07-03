ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "chad.bartels@gmail.com ",
  :password             => "cbartels6016",
  :authentication       => "plain",
  :enable_starttls_auto => true
}