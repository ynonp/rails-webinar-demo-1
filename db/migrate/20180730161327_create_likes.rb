class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :link, foreign_key: true
      t.index [:user_id, :link_id], unique: true

      t.timestamps
    end
    remove_column :links, :likes, :integer
  end
end
