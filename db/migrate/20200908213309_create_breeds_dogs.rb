class CreateBreedsDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds_dogs do |t|
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
