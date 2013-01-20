class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :kod
      t.string :ev_sahibi
      t.string :misafir
      t.string :tahmin
      t.float :oran
      t.integer :user_id

      t.timestamps
    end
  end
end
