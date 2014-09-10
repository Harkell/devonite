class ChangeContentTable < ActiveRecord::Migration
  def change
  	rename_column :contents, :header1, :section1
 	rename_column :contents, :header2, :section2
	rename_column :contents, :section1header1, :section3
	rename_column :contents, :section1paragraph1, :section4
	rename_column :contents, :section2header1, :section5
	rename_column :contents, :section2paragraph1, :section6
	rename_column :contents, :section2paragraph2, :section7
	rename_column :contents, :section3header1, :section8
	rename_column :contents, :section3paragraph1, :section9
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
