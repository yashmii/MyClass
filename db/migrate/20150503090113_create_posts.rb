class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post
      t.integer :teacher_id

      t.timestamps
    end
  end
end
