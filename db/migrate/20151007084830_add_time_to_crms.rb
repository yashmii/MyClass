class AddTimeToCrms < ActiveRecord::Migration
  def change
    add_column :crms, :time, :datetime
  end
end
