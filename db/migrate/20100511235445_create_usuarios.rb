class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombres, :limit => 100
      t.string :paterno, :limit => 50
      t.string :materno, :limnit => 50
      t.string :email, :limit => 200
      t.string :password, :limit => 32

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
