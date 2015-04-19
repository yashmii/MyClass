class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :teacher_id
      t.string :language_id
      t.string :office_id
      t.string :language_level_id
      t.string :book_id
      t.string :days
      t.time :time
      t.integer :duration
      t.text :info

      t.timestamps
    end
  end
end
