class AddNameToSingers < ActiveRecord::Migration
  def self.up
    add_column :singers, :name, :string
  end

  def self.down
    remove_column :singers, :name
  end
end
