class CreateCrms < ActiveRecord::Migration
  def change
    create_table :crms do |t|
      t.integer :client_id
      t.string :info
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
