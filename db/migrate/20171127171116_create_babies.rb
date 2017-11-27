class CreateBabies < ActiveRecord::Migration[5.0]
  def change
    create_table :babies do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :origin
      t.string :location
      t.integer :price, default: 0
      t.string :description
      t.boolean :availability, default: true
      t.integer :age
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
