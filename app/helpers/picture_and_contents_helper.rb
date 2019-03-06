module PictureAndContentsHelper
  def new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_picture_and_contents_path
    elsif action_name == 'edit'
      picture_and_content_path
    end
  end
end