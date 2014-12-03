class AddImageUrlToMonologuePost < ActiveRecord::Migration
  def change
    add_column :monologue_posts, :image_url, :string
  end
end
