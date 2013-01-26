class AddSonucToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sonuc, :boolean
  end
end
