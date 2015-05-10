class AddCstatusIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :cstatus_id, :integer
  end
end
