class AdminController < ApplicationController
  
  before_filter :authenticate_admin!
  
  def home

  	#signs out all instructors when administrator logs in
  	for user in User.all 
  		sign_out user
	end

  end

end
