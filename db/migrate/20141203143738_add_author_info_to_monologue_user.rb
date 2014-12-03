class AddPhotoToMonologueUser < ActiveRecord::Migration
  def change
    add_column :monologue_users, :title, :string
    add_column :monologue_users, :photo_url, :string
  end
end
