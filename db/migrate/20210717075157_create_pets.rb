class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.references :user, null: false, foreign_key: true
      t.string :picture_url
      t.text :description

      t.timestamps
    end
  end
end
