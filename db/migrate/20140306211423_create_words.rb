class CreateWords < ActiveRecord::Migration
  def up
    create_table :words do |t|
      t.column :content, :text
      t.column :originator, :string
      t.column :category, :string

      t.timestamps
    end
  end

  def down
    drop_table :words
  end

end
