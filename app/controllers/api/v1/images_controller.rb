class Api::V1::ImagesController < ApplicationController
  def index
    render json: Image.order('RANDOM()').limit(10)
  end

  def upload
    Image.transaction do
      @images = image_params['files'].map { |file| Image.create!(file: file) }
    end
    render json: @images
  rescue ActiveRecord::RecordInvalid => e
    render json: {
      status: 'error',
      code: 400,
      message: e
    }, status: 400
  end

  private

  def image_params
    params.require(:image).permit({ files: [] })
  end
end
