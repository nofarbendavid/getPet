class CreateDogsVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs_volunteers do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :volunteer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
