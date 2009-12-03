class CreateStoryCards < ActiveRecord::Migration
  def self.up
    create_table :story_cards do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :story_cards
  end
end
