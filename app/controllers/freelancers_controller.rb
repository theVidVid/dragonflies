class FreelancersController < ApplicationController
  before_action :set_freelancer, only: [:show, :edit, :update, :destroy]

  # GET /freelancers
  # GET /freelancers.json
  def index
    @freelancers = Freelancer.all
    @popular_places = Freelancer.group(:location).order('count_id DESC').limit(6).count(:id)
    puts "test"
    puts @popular_places
  end

  # GET /freelancers/1
  # GET /freelancers/1.json
  def show
  
  end

  # GET /freelancers/new
  def new
    @freelancer = Freelancer.new
  end

  # GET /freelancers/1/edit
  def edit
  end

  # POST /freelancers
  # POST /freelancers.json
  def create
    @freelancer = Freelancer.new(freelancer_params)

    respond_to do |format|
      if @freelancer.save
        format.html { redirect_to @freelancer, notice: 'Freelancer was successfully created.' }
        format.json { render :show, status: :created, location: @freelancer }
      else
        format.html { render :new }
        format.json { render json: @freelancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freelancers/1
  # PATCH/PUT /freelancers/1.json
  def update
    respond_to do |format|
      if @freelancer.update(freelancer_params)
        format.html { redirect_to @freelancer, notice: 'Freelancer was successfully updated.' }
        format.json { render :show, status: :ok, location: @freelancer }
      else
        format.html { render :edit }
        format.json { render json: @freelancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freelancers/1
  # DELETE /freelancers/1.json
  def destroy
    @freelancer.destroy
    respond_to do |format|
      format.html { redirect_to freelancers_url, notice: 'Freelancer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelancer
      @freelancer = Freelancer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freelancer_params
      params.require(:freelancer).permit(:first_name, :last_name, :bio, :userpic, :picture, :user_id, :location)
    end
end
