class CreateBolsistas < ActiveRecord::Migration
  def self.up
    create_table :bolsistas do |t|
      t.string :nome
      t.string :email
      t.string :rua
      t.integer :numero
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :telefone
      t.string :celular
      t.date :data_nascimento
      t.string :sexo
      t.string :nacionalidade
      t.string :naturalidade
      t.string :nome_pai
      t.string :nome_mae
      t.string :estado_civil
      t.string :nome_conjuge
      t.string :rg
      t.string :orgao
      t.date :data_expedicao
      t.string :cpf
      t.string :certiicado_reservista
      t.string :categoria
      t.string :titulo_eleitor
      t.string :zona
      t.string :secao
      t.string :grau_instrucao
      t.string :formacao_academica
      t.string :instituicao
      t.string :pos_graduacao
      t.string :tipo_bolsa

      t.timestamps
    end
  end

  def self.down
    drop_table :bolsistas
  end
end
