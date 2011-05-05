class AddNameToDj < ActiveRecord::Migration
  def self.up
    add_column :djs, :name, :string
  end

  def self.down
    remove_column :djs, :name
  end
end
