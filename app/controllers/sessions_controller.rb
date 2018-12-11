class SessionsController < ApplicationController

	def new

	end



	def create
		user = User.find_by(email: params[:email].downcase)
		if user
			session[:user_id] = user.id
			flash[:notice] = "Ya estás loguead@!"

			proposal = Proposal.find_by_user_id(user.id)

			if proposal
				flash[:alert]= "Ya has realizado una propuesta de fecha y no puedes hacer más"
				redirect_to root_path
			else

				redirect_to new_proposal_path
			end


		else
			flash[:alert]= "No estás dad@ de alta o has escrito mal el email"
			redirect_to login_path
		end 


	end


	def destroy

	end

end