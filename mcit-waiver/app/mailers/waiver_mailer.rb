class WaiverMailer < ActionMailer::Base
  default from: "MCIT Waiver"

  def confirmation_email(waiver)
  	@waiver = waiver
  	mail(to: @waiver.email, subject: 'Waiver Submission Confirmation')

  end

  def waiver_approved_email(waiver)
    @waiver = waiver
    mail(to: @waiver.email, subject: 'Waiver Application Results')
  end

  def waiver_denied_email(waiver)
    @waiver = waiver
    mail(to: @waiver.email, subject: 'Waiver Application Results')
  end


end


