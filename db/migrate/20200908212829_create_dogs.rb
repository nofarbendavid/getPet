class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.date :date_of_birth
      t.belongs_to :size, null: false, foreign_key: true
      t.boolean :is_vaccinated, null: false
      t.boolean :is_fixed, null: false
      t.boolean :is_male, null: false
      t.string :description

      t.timestamps
    end
  end
end
