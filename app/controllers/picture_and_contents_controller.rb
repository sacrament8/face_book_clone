class PictureAndContentsController < ApplicationController
  before_action :set_picure_and_content, only: [:show, :destroy, :edit, :update]

  def index
    @picture_and_contents = PictureAndContent.all
  end
  def new
    if params[:back]
      @picture_and_content = PictureAndContent.new(picture_and_content_params)
    else
      @picture_and_content = PictureAndContent.new
    end
  end
  def edit
  end
  def update
    @picture_and_content.update(picture_and_content_params)
    flash[:notice] = '投稿の編集に成功しました'
    redirect_to picture_and_contents_path
  end
  def create
    @picture_and_content = current_user.picture_and_contents.build(picture_and_content_params)
    if @picture_and_content.save
      redirect_to picture_and_contents_path
    else
      render 'new'
    end
  end
  def confirm
    @picture_and_content = current_user.picture_and_contents.build(picture_and_content_params)
    render 'new' if @picture_and_content.invalid?
  end
  def destroy
    @picture_and_content.destroy
    flash[:notice] = '投稿の削除が完了しました'
    redirect_to picture_and_contents_path
  end
  private
  def picture_and_content_params
    params.require(:picture_and_content).permit(:image, :image_cache, :content, :user_id)
  end
  def set_picure_and_content
    @picture_and_content = PictureAndContent.find(params[:id])
  end
end