class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.references :member, null: false, foreign_key: true
      t.references :favorable, polymorphic: true, null: false


      t.timestamps
    end
  end
end
