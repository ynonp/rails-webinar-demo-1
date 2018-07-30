class AddUseridToLink < ActiveRecord::Migration[5.2]
  def change
    add_reference :links, :user
  end
end
