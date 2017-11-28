class ChangeDescriptionTypeInBabies < ActiveRecord::Migration[5.0]
  def change
    change_column :babies, :description, :text
  end
end
