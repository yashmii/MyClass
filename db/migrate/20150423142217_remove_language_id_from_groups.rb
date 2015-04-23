class RemoveLanguageIdFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :language_id, :string
  end
end
