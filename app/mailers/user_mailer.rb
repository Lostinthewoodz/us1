class UserMailer < ActionMailer::Base
  default from: "app27788021@heroku.com"
  def welcome_email(user)
  	@user = user
  	mail(to: @user.email, subject: 'test welcome | email')
  end
end
