class ContactMailer < ActionMailer::Base
  default from: "support@us1travel.com"
  def contact_email(contact)
  	@contact = contact
  	mail(to: "support@us1travel.com", subject: @contact.title)
  end
end
