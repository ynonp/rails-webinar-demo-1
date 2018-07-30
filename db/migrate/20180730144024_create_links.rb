class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :header
      t.string :href
      t.integer :likes

      t.timestamps
    end
  end
end
