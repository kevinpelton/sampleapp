class ChartsController < ApplicationController
	def index
		@hospitals = Hospital.select("state, hospital_type, count(hospital_type) as total_hospitals").group("hospital_type","state").order("state")

    	respond_to do |format|
    	  format.html # index.html.erb
    	  format.json { render json: @hospitals }
    	end
    end
end
