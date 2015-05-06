class AddDetailsToOffices < ActiveRecord::Migration
  def change
    add_column :offices, :phone_number, :string
    add_column :offices, :address, :string
    add_column :offices, :email, :string
  end
end
