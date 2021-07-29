class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name,      null: false, limit: 150
      t.string :id_name,   null: false, limit: 50
    end
  end
end
