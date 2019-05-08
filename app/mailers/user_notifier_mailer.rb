class UserNotifierMailer < ApplicationMailer
	default from: 'contact@truckapp.com'

	def welcome_user(user)
		@user = user
		@url = "https://truck-cmap-heroku-16.herokuapp.com"
		mail(to: @user.email, subjetc: "Welcome User truckApp")
	end
end
