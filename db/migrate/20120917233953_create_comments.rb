class CreateComments < ActiveRecord::Migration
  def up
  end

  def down
  end
  
  def change
    create_table :comments do |t|
      t.text      :message
      t.integer   :user_id
      t.string    :link_id
      
      t.timestamps
    end
  end
  
end
