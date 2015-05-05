class AddCompanyIdToOffices < ActiveRecord::Migration
  def change
    add_column :offices, :company_id, :string
    add_column :offices, :integer, :string
  end
end
