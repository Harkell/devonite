class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :header1
      t.text :header2
      t.text :section1header1
      t.text :section1paragraph1 
      t.text :section2header1
      t.text :section2paragraph1
      t.text :section2paragraph2
      t.text :section3header1
      t.text :section3paragraph1

      t.timestamps
    end
  end
end
