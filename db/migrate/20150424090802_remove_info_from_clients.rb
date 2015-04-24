class RemoveInfoFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :info, :text
  end
end
