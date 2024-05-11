class AddLikesToMovies < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :likes, :integer
  end
end
