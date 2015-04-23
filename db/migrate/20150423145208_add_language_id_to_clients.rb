class AddLanguageIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :language_id, :integer
  end
end
