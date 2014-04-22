class CreateVideos < ActiveRecord::Migration
  def up
    create_table :videos do |t|
      t.column :title, :string
      t.column :originator, :string
      t.column :url, :string
      t.column :category, :string

      t.timestamps
    end
  end

  def down
    drop_table :videos
  end


end
