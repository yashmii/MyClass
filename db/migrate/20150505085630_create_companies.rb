class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :website
      t.string :phone_number
      t.string :address
      t.string :logo

      t.timestamps
    end
  end
end
