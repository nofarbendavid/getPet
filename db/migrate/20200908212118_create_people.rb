class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :address
      t.boolean :is_banned
      t.date :date_of_birth

      t.timestamps
    end
  end
end
