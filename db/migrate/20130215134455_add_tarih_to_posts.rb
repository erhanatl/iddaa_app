class AddTarihToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tarih, :date
  end
end
