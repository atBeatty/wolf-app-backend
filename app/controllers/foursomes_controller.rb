class FoursomesController < ApplicationController
  before_action :set_foursome, only: [:show, :update, :destroy]

  # GET /foursomes
  def index
    @foursomes = Foursome.all

    render json: @foursomes.to_json(:include => :golfers)
  end

  # GET /foursomes/1
  def show
    
    render json: {id: @foursome, teeTime: @foursome.teeTime, golfers: @foursome.golfers}
  end

  # POST /foursomes
  def create

    @foursome = Foursome.new(foursome_params)
    binding.pry
    # CREATE GOLFER OJBECTS
    params[:golfers].each do |golfer|
      @foursome.golfers << Golfer.new(initials: golfer["initials"])
    end

    if @foursome.save
      render json: @foursome, status: :created, location: @foursome
    else
      render json: @foursome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foursomes/1
  def update
    if @foursome.update(foursome_params)
      render json: @foursome
    else
      render json: @foursome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foursomes/1
  def destroy
    @foursome.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foursome
      @foursome = Foursome.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def foursome_params
      params.require(:foursome).permit(:teeTime, golfers_attributes: [:id, :initials, :foursome_id])
    end
end
