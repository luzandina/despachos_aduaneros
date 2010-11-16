class AddLiquidacionsArancel < ActiveRecord::Migration
  def self.up
    add_column :liquidacions, :arancel, :decimal, :precision => 14, :scale => 2

  end

  def self.down
    remove_column :liquidacions, :arancel
  end
end
