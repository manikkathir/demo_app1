class CreateMicros < ActiveRecord::Migration
  def change
    create_table :micros do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
