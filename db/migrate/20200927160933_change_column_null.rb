class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :adoptions, :start_date, false
    change_column_null :adoptions, :status, false
    change_column_null :breeds, :breed_name, false
    change_column_null :images, :image_url, false
    change_column_null :people, :first_name, false
    change_column_null :people, :last_name, false
    change_column_null :people, :phone_number, false
    change_column_null :sizes, :size_name, false
    change_column_null :volunteers, :first_name, false
    change_column_null :volunteers, :last_name, false
    change_column_null :volunteers, :phone_number, false
    change_column_null :volunteers, :is_active, false, 0
  end
end
