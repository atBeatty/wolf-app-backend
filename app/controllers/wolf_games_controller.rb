class WolfGamesController < ApplicationController
  before_action :set_wolf_game, only: [:show, :update, :destroy]

  # GET /wolf_games
  def index
    @wolf_games = WolfGame.all

    render json: @wolf_games
  end

  # GET /wolf_games/1
  def show
    scores = @wolf_game.scores
    render json: {stakes: @wolf_game.stakes, holes: @wolf_game.course.holes, score: scores}
    
  end

  # POST /wolf_games
  def create
    @wolf_game = WolfGame.new(wolf_game_params)

    if @wolf_game.save
      render json: @wolf_game, status: :created, location: @wolf_game
    else
      render json: @wolf_game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wolf_games/1
  def update
    if @wolf_game.update(wolf_game_params)
      render json: @wolf_game
    else
      render json: @wolf_game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wolf_games/1
  def destroy
    @wolf_game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wolf_game
      @wolf_game = WolfGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wolf_game_params
      params.require(:wolf_game).permit(:stakes, :course_id, :foursome_id)
    end
end
