class AddTpriceIdToPeriods < ActiveRecord::Migration
  def change
    add_column :periods, :tprice_id, :integer
  end
end
