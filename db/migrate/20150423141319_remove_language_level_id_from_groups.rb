class RemoveLanguageLevelIdFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :language_level_id, :string
  end
end
