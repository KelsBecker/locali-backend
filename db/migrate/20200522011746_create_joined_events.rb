class CreateJoinedEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :joined_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.timestamps
    end
  end
end
