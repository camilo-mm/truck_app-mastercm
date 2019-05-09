class UserNotifierMailer < ApplicationMailer
	default from: 'contact@truckapp.com'

	def welcome_user(user)
		@user = user
		@url = "https://truck-cmap-heroku-16.herokuapp.com"
		mail(to: @user.email, subjetc: "Welcome User truckApp")
	end

	def new_article_to_user(email, title, id, username)
		@email = email
		@title = title
		@id = id
		@username = username
		#@url = "http://localhost:3000/articles/#{@id}"
		@url = "https://truck-cmap-heroku-16.herokuapp.com/articles/#{@id}"
		mail(to: @email, subjetc: "#{title} - New Article on TruckApp")
	end

end
