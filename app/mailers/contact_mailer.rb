class ContactMailer < ActionMailer::Base
  default from: "contact@us1travel.com"
  def contact_email(contact)
  	@contact = contact
  	mail(to: "wc9825@gmail.com", subject: 'test welcome | email')
  end
end
