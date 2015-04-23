class AddClassroomIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :classroom_id, :integer
  end
end
