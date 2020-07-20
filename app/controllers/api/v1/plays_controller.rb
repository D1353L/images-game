class Api::V1::PlaysController < ApplicationController
  def index
    render json: Play.all
  end

  def create
    play = Play.new(play_params)

    unless play.save
      render json: {
        status: 'error',
        code: 400,
        message: play.errors.full_messages.join('. ')
      }, status: 400
      return
    end

    render json: play
  end

  private

  def play_params
    params.require(:play).permit(:tick, :image_url)
  end
end
