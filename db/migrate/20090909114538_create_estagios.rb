class CreateEstagios < ActiveRecord::Migration
  def self.up
    create_table :estagios do |t|
      t.string :tipo_do_estagio
      t.string :nivel_do_estagio
      t.date :inicio_do_estagio
      t.date :fim_do_estagio
      t.string :area_de_concentracao
      t.string :carga_horaria_semanal
      t.string :carga_horaria_total
      t.string :remunerado
      t.string :valor_da_bolsa
      t.string :outras_ajudas_de_custo
      t.string :obrigatorio
      t.string :duracao
      t.string :local_do_estagio
      t.string :departamento
      t.string :setor
      t.string :agente_de_integracao
      t.string :qual_agente_de_integracao
      t.integer :empresa_id

      t.timestamps
    end
  end

  def self.down
    drop_table :estagios
  end
end

