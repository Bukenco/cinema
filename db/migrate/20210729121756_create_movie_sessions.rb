class CreateMovieSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_sessions do |t|
      t.references :movie,        foreign_key: true, null: false
      t.references :venue,        foreign_key: true, null: false
      t.references :session_slot, foreign_key: true, null: false
      t.date :session_date,                          null: false
      t.decimal :price, precision: 15, scale: 2
    end
    add_index :movie_sessions, [:venue_id, :session_slot_id, :session_date], unique: true, name: :venue_session_index
  end
end
