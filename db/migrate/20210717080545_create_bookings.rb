class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :sitter, foreign_key: { to_table: :users }
      t.references :pet, null: false, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.integer :status
      t.timestamps
    end
  end
end
