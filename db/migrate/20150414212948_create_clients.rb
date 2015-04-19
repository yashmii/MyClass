class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birthdate
      t.integer :telephone_1
      t.string :email
      t.text :info
      t.string :photo
      t.string :office_id
      t.string :language_level

      t.timestamps
    end
  end
end
