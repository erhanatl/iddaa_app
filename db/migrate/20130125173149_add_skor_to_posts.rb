class AddSkorToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :skor, :string
  end
end
