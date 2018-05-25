class WelcomeController < ApplicationController

  def index
    
    @popular_places = Freelancer.where('location IS NOT NULL').group(:location).order('count_id DESC').limit(6).count(:id)
  end
end
