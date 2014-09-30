class AddSlugToBlogposts < ActiveRecord::Migration
  def change
    add_column :blogposts, :slug, :string
    add_index :blogposts, :slug
  end
end
