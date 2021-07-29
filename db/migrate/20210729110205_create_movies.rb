class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name,    null: false, limit: 255
      t.string :imdb_id, null: false, limit: 50, index: true
    end
  end
end
