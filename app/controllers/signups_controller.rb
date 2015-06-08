class SignupsController < ApplicationController
   def show
      @signups = Signup.all
   end

	def new
		@signup = Signup.new
	end

	def create 
  		@signup = Signup.new(params[:signup]) 
  		if @signup.save 
    		redirect_to '/thanks' 
  		else 
    		render 'new' 
  		end 
	end

	private 
  		def signup_params  
			params.require(:signup).permit(:email)
  		end
end
