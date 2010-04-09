class CreateEstados < ActiveRecord::Migration
  def self.up
    create_table :estados do |t|
      t.string :sigla
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :estados
  end
end
