class CreateItemIndices < ActiveRecord::Migration
  def self.up
    create_table :item_indices do |t|
      t.string :cat
      t.string :key
      t.string :value
    end
  end

  def self.down
    drop_table :item_indices
  end
end
