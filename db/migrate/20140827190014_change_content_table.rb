class ChangeContentTable < ActiveRecord::Migration
  def change
	add_column :contents, :section10, :text
	add_column :contents, :section11, :text
	add_column :contents, :section12, :text
	add_column :contents, :section13, :text
	add_column :contents, :section14, :text
	add_column :contents, :section15, :text
	add_column :contents, :section16, :text
	add_column :contents, :section17, :text
	add_column :contents, :section18, :text
	add_column :contents, :section19, :text
	add_column :contents, :section20, :text
  end
end
