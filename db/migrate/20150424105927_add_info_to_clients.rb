class AddInfoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :info, :string
  end
end
