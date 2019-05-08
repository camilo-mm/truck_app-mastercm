class UserNotifierMailer < ApplicationMailer
	default from: 'contact@truckapp.com'

	def welcome_user(user)
		@user = user
		@url = "https://localhost:3000"
		mail(to: @user.email, subjetc: "Welcome User truckApp")
	end
end
