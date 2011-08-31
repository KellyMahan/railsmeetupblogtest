class AddCategoryIdColumn < ActiveRecord::Migration
  def self.up
    add_column :posts, :category_id, :integer
  end

  def self.down
  end
end
