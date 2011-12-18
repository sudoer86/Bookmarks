class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :img
      t.string :name
      t.string :href

      t.timestamps
    end
  end
end
