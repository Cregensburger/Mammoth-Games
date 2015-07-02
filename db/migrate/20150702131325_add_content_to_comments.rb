class AddContentToComments < ActiveRecord::Migration
  def change
    add_column :comments, :email, :string
    add_column :comments, :title, :string
    add_column :comments, :body, :string
  end
end
