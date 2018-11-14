class Api::V1::ScoresController < ApplicationController
  before_action :find_score, only: [:show]

  def index
    @scores = Score.sorted_scores
    render json: @scores
  end

  def show
    render json: @score
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      render json: @score, status: 200
    else
      render json: @score.errors
    end
  end

  private

  def score_params
    params.require(:score).permit(:user_id, :seconds)
  end

  def find_score
    @score = Score.find(params[:id])
  end
end
