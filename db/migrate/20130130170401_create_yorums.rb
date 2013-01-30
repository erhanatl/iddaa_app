class CreateYorums < ActiveRecord::Migration
  def change
    create_table :yorums do |t|
      t.integer :user_id
      t.string :title
      t.text :yazi

      t.timestamps
    end
  end
end
