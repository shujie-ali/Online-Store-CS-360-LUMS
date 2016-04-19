ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "one-point-shujie-ali1.c9users.io",
  :user_name            => "dr.shujaat.ali@gmail.com",
  :password             => "iamaloneurmine",
  :authentication       => "plain",
  :enable_starttls_auto => true
}