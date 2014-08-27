class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :section1
      t.text :section2
      t.text :section3
      t.text :section4 
      t.text :section5
      t.text :section6
      t.text :section7
      t.text :section8
      t.text :section9
      t.boolean :subscription

      t.timestamps
    end
  end
end
