class CreatePetSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_schedules do |t|
      t.references :pet, null: false, foreign_key: true
      t.date :date
      t.timestamps
    end
  end
end
