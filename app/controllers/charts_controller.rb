class ChartsController < ApplicationController
	def index
#	    @hospitals = Hospital.all

    	respond_to do |format|
    	  format.html # index.html.erb
    	  format.json { render json: @hospitals }
    	end
    end
end
