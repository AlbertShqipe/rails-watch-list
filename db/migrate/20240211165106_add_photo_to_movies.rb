class AddPhotoToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :photo, :string
  end
end
