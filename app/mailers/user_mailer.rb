class UserMailer < ActionMailer::Base
  default from: "example@heroku.com"
  def welcome_email(user)
  	@user = user
  	mail(to: "wc9825@gmail.com", subject: 'test welcome | email')
  end
end
