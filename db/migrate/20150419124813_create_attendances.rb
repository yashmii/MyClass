class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :attendance
      t.string :client_id
      t.string :lesson_id

      t.timestamps
    end
  end
end
