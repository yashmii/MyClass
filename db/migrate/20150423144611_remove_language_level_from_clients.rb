class RemoveLanguageLevelFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :language_level, :string
  end
end
