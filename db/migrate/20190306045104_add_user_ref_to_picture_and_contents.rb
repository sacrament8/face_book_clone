class AddUserRefToPictureAndContents < ActiveRecord::Migration[5.1]
  def change
    add_reference :picture_and_contents, :user, foreign_key: true
  end
end
