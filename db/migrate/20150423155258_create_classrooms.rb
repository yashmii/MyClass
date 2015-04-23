class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :office_id

      t.timestamps
    end
  end
end
