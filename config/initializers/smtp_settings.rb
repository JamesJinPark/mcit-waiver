ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => "587",
	:domain => "gmail.com",
	:user_name => ENV["GMAIL"]||"McitWaiver@gmail.com",
	:password => ENV["PASSWORD"]||"McitWaiver1234567890",
	:authentication => "plain",
	:enable_starttls_auto => true
}