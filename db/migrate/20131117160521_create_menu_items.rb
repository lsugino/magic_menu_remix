class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.belongs_to :menu
      t.belongs_to :item 
      t.timestamps
    end
  end
end