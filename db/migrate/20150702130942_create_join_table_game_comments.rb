class CreateJoinTableGameComments < ActiveRecord::Migration
  def change
    create_join_table :games, :comments do |t|
      # t.index [:game_id, :comment_id]
      # t.index [:comment_id, :game_id]
    end
  end
end
