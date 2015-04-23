class AddLanguageIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :language_id, :integer
  end
end
