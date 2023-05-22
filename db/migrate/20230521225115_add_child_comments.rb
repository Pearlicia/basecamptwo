class AddChildComments < ActiveRecord::Migration[7.0]
  def change
    add_column :usercomments, :parent_id, :integer, null: true 
  end
end
