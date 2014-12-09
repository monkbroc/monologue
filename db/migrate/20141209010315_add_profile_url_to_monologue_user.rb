class AddProfileUrlToMonologueUser < ActiveRecord::Migration
  def change
    add_column :monologue_users, :profile_url, :string
  end
end
