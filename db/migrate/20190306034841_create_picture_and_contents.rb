class CreatePictureAndContents < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_and_contents do |t|
      t.text :image
      t.text :content
      t.timestamps
    end
  end
end
