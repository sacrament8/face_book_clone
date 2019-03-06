class PictureAndContentsController < ApplicationController
  before_action :set_picure_and_content, only: [:show, :destroy, :eidt, :update]
  def index
    @picture_and_contents = PictureAndContent.all
  end
  def new
    @picture_and_content = PictureAndContent.new
  end
  def create
    @picture_and_content = PictureAndContent.new(picture_and_content_params)
    if @picture_and_content.save
      redirect_to picture_and_contents_path
    else
      render 'new'
    end
  end
  private
  def picture_and_content_params
    params.require(:picture_and_content).permit(:image, :content, :user_id)
  end
  def set_picure_and_content
    @picture_and_content = PictureAndContent.find(params[:id])
  end
end
