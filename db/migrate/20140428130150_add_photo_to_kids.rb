class AddPhotoToKids < ActiveRecord::Migration
  def change
    add_column :kids, :photo, :string
  end
end
