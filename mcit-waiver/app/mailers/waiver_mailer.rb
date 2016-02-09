class WaiverMailer < ActionMailer::Base
  default from: "MCIT Waiver"

  def confirmation_email(waiver)
  	@waiver = waiver
  	mail(to: @waiver.email, subject: 'Waiver Submission Confirmation')

  end

end


