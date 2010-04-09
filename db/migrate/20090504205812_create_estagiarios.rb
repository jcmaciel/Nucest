class CreateEstagiarios < ActiveRecord::Migration
  def self.up
    create_table :estagiarios do |t|
      t.string :nome, :null => false
      t.string :matricula
      t.date   :data_nascimento
      t.integer :periodo
      t.string :identidade
      t.string :orgao_expeditor
      t.string :cpf
      t.string :rua
      t.string :bairro
      t.string :cep
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :instituicao_origem
      t.string :disponibilidade_horario
      t.references :cidade
      t.integer :supervisor_estagio_id
      t.integer :estagio_id

      #mudeidaqui pra baixo
      t.string :seguradora
      t.string :numero_da_apolice
      t.date :data_da_emissao
      t.date :data_do_vencimento
      t.string :plano_de_saude


      t.string :atividades_desenvolidas_no_estagio

      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE estagiarios
        ADD CONSTRAINT fk_cidade
        FOREIGN KEY (cidade_id)
        REFERENCES cidades(id)
    SQL
  end

  def self.down
    drop_table :estagiarios
  end
end

