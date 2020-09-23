class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.date :start_date
      t.string :end_date_date
      t.belongs_to :dog, null: false, foreign_key: true
      t.belongs_to :person, null: false, foreign_key: true
      t.string :status
      t.string :return_reason
      t.string :rejection_reason

      t.timestamps
    end
  end
end
