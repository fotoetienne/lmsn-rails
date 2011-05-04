class CreateDjs < ActiveRecord::Migration
  def self.up
    create_table :djs do |t|
      t.integer :user_id
      t.integer :code
      t.boolean :free
      t.decimal :balance, :default => 0
      t.date :list_updated
      t.string :venue
      t.boolean :public, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :djs
  end
end
