class AddSembolToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sembol, :integer
  end
end
