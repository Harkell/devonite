class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.boolean :subscribed

      t.timestamps
    end
  end
end
