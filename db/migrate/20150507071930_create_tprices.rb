class CreateTprices < ActiveRecord::Migration
  def change
    create_table :tprices do |t|
      t.string :name
      t.string :tprice
      t.boolean :active

      t.timestamps
    end
  end
end
