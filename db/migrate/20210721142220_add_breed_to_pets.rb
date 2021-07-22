class AddBreedToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :breed, :string
  end
end
