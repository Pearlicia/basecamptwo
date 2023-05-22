class RemoveProjectAssociationFromUsercomments < ActiveRecord::Migration[7.0]
  def change
    remove_index :usercomments, name: "index_usercomments_on_project_id"
    remove_column :usercomments, :project_id
  end
end
