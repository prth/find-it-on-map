class DoctorsController < ApplicationController
  def new
  end

  def profile
  	if params[:id].present?
  		@param = params[:id]
  		@doctor = Doctor.find_by_id(@param)

  		@nearbySimilarDoctors = nil
  		if !@doctor.nil?
  			@nearbySimilarDoctors = @doctor.nearbys(10, :unit => :km)
  			if !@nearbySimilarDoctors.nil?
  				@nearbySimilarDoctors = @nearbySimilarDoctors.where(speciality: @doctor.speciality)
  			end
  		end
  	end
  end
end
