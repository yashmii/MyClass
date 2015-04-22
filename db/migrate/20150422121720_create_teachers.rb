class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birthdate
      t.integer :telephone_1
      t.string :email
      t.string :info
      t.string :photo

      t.timestamps
    end
  end
end
