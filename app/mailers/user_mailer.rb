class UserMailer < ApplicationMailer

	default from: ''

	def confirmation_email 
		@user = params[:user]
		@url = ''


		mail(to: @user.email, subject: 'Confirmación de registro en QuedAPPmos')
	end
end
