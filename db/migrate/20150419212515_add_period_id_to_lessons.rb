class AddPeriodIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :period_id, :integer
  end
end
