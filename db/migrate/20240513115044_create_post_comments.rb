class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.integer :member_id,               null: false
      t.integer :feed_id
      t.integer :post_comment_id
      t.text    :content,                 null: false
      t.timestamps
    end
  end
end
