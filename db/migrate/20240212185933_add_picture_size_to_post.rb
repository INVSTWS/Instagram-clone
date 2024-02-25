class AddPictureSizeToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :x_offset, :float
    add_column :posts, :y_offset, :float
    add_column :posts, :height, :float
    add_column :posts, :width, :float
  end
end
