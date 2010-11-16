class AddProvedorsPaiseId < ActiveRecord::Migration
  def self.up
    add_column :proveedors, :paise_id, :integer
  end

  def self.down
    remove_column :proveedors, :paise_id
  end
end
