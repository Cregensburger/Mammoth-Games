class CreateComments < ActiveRecord::Migration
  def change
    create_table :usercomments do |t|

      t.timestamps null: false
    end
  end
end
