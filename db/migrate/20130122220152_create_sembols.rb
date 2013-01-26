class CreateSembols < ActiveRecord::Migration
  def change
    create_table :sembols do |t|
      t.integer :sec

      t.timestamps
    end
  end
end
