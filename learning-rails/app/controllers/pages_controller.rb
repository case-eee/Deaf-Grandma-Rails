class PagesController < ApplicationController
	def index
		@grandma = params[:grandma]
	end

	def show
		if params[:user_input] == params[:user_input].upcase
			redirect_to :action => 'index', :grandma => 'No, not since 1762'	
		else
			redirect_to :action => 'index', :grandma => 'Speak up.'
		end
	end 
end