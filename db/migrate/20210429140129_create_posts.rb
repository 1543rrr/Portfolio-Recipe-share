class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :caption, null: false
      t.string :photo
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end


