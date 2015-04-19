class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :PeroidDescription
      t.integer :group_id

      t.timestamps
    end
  end
end
