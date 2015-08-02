class SayController < ApplicationController
  def hello 	
   	@now = Time.now;
	
	@title = "Welcome";




	end
  
  def goodbye
  
  end
end
