class CreateSpreeMenu < ActiveRecord::Migration
  def up
    create_table :spree_menus, :force => true do |t|
      t.references :spree_page
      t.references :spree_menu_bar
      t.integer :sequence
      t.integer :parent_id
      t.string :link_text
      t.string :url
      t.boolean :visible
      
      t.timestamps
    end
  end

  def down
    drop_table :spree_menus
  end
end
