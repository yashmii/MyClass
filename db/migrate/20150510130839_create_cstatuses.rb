class CreateCstatuses < ActiveRecord::Migration
  def change
    create_table :cstatuses do |t|
      t.string :cstatus

      t.timestamps
    end
  end
end
