class CreateCidades < ActiveRecord::Migration
  def self.up
    create_table :cidades do |t|
      t.string :nome
      t.integer :estado_id
      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE cidades
        ADD CONSTRAINT fk_estado
        FOREIGN KEY (estado_id)
        REFERENCES estados(id)
    SQL
  end

  def self.down
    drop_table :cidades
  end
end
