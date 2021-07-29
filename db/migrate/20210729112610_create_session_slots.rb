class CreateSessionSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :session_slots do |t|
      t.string :name,         limit: 150, null: false
      t.datetime :start_date,             null: false
      t.datetime :end_date,               null: false
    end
  end
end
