ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "abilitymatrimony.varnaskitchen.com",
  :user_name            => "mail2karthyk",
  :password             => "heroeskarthik401",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "abilitymatrimony.varnaskitchen.com"