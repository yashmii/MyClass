class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :period_id

      t.timestamps
    end
  end
end
