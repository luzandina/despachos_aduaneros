class CreatePaises < ActiveRecord::Migration
  def self.up
    execute("DROP TABLE IF EXISTS paises")
    create_table :paises do |t|
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
  end

  def self.down
    drop_table :paises
  end
end
