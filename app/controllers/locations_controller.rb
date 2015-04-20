class LocationsController < ApplicationController
  def new
  end

  def search
    if params[:f].present?
      @param = params[:f]
      @locationSearch = Location.find_by_localityname(@param)
      if !@locationSearch.nil?
        @doctors = Doctor.near([@locationSearch.latitude, @locationSearch.longitude], 20)
        #case @locationSearch.locationtype
        #when 0
        #  @doctors = Doctor.where(country: @locationSearch.id)
        #  @doctors = Doctor.near([@locationSearch.latitude, @locationSearch.longitude], 20)
        #when 1
        # @doctors = Doctor.where(state: @locationSearch.id)
        #when 2
        # @doctors = Doctor.where(city: @locationSearch.id)
        #when 3 
        # @doctors = Doctor.where(locality: @locationSearch.id)
        #else
        # @doctors = Doctor.find_by_locality(-1)
        #end  

        if !@doctors.nil?
          @doctorList = @doctors.map do |d|
          { 
            :id => d.id, 
            :name => d.name, 
            :email => d.email, 
            :speciality => d.speciality, 
            :address => d.address, 
            :lat => d.latitude, 
            :lng => d.longitude
          }
          end
          @doctorJson = @doctorList.to_json   
        end
      end
      
         
    else  
      @doctors = Doctor.find_by_locality(-1)
    end
  end
end
