class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change4
    add_attachment :users, :avatar
  end
end
