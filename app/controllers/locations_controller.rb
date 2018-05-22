class LocationsController < ApplicationController
    # before_action :set_freelancer, only: [:show, :edit, :update, :destroy]
  
  
    # GET /freelancers/1
    # GET /freelancers/1.json
    def show
        @freelancers_from_location = Freelancer.where(location: params[:location])
        puts @freelancers_from_location
    end
  
    
  end
  