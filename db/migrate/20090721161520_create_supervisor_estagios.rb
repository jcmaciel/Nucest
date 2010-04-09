class CreateSupervisorEstagios < ActiveRecord::Migration
  def self.up
    create_table :supervisor_estagios do |t|
      t.string :nome
      t.string :matricula
      t.string :lotacao
      t.string :funcao
      t.string :telefone

      t.timestamps
    end
  end

  def self.down
    drop_table :supervisor_estagios
  end
end
