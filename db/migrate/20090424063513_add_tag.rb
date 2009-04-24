class AddTag < ActiveRecord::Migration
  def self.up
	add_column :photos, :tag, :string, :limit => 256
  end

  def self.down
	remove_column :photos, :tag
  end
end
