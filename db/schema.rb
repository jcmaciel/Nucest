# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090909114538) do

  create_table "bolsistas", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "rua"
    t.integer  "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone"
    t.string   "celular"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.string   "nacionalidade"
    t.string   "naturalidade"
    t.string   "nome_pai"
    t.string   "nome_mae"
    t.string   "estado_civil"
    t.string   "nome_conjuge"
    t.string   "rg"
    t.string   "orgao"
    t.date     "data_expedicao"
    t.string   "cpf"
    t.string   "certiicado_reservista"
    t.string   "categoria"
    t.string   "titulo_eleitor"
    t.string   "zona"
    t.string   "secao"
    t.string   "grau_instrucao"
    t.string   "formacao_academica"
    t.string   "instituicao"
    t.string   "pos_graduacao"
    t.string   "tipo_bolsa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "instituicao"
    t.string   "razao_social"
    t.string   "cnpj"
    t.date     "inicio_da_vigencia_do_convenio"
    t.date     "fim_da_vigencia_do_convenio"
    t.string   "rua"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "telefone"
    t.string   "fax"
    t.string   "celular"
    t.string   "caixa_postal"
    t.string   "email"
    t.string   "home_page"
    t.string   "responsavel_para_contato"
    t.string   "telefone_responsavel"
    t.string   "celular_responsavel"
    t.string   "email_responsavel"
    t.integer  "cidade_id"
    t.string   "nome_do_representante"
    t.string   "funcao_do_representante"
    t.string   "identidade_do_representante"
    t.string   "orgao_expeditor"
    t.string   "cpf"
    t.string   "telefone_do_representante"
    t.string   "celular_do_representante"
    t.string   "email_do_representante"
    t.string   "areas_que_oferece_estagio"
    t.string   "periodo_do_estagio"
    t.date     "inicio_periodo_que_oferece_estagio"
    t.date     "fim_periodo_que_oferece_estagio"
    t.string   "remuneracao"
    t.string   "valor"
    t.string   "outra_forma"
    t.string   "outra_forma_tipo"
    t.string   "alimentacao"
    t.string   "transporte"
    t.string   "seguro_acidentes_pessoais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", :force => true do |t|
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estagiarios", :force => true do |t|
    t.string   "nome",                               :null => false
    t.string   "matricula"
    t.date     "data_nascimento"
    t.integer  "periodo"
    t.string   "identidade"
    t.string   "orgao_expeditor"
    t.string   "cpf"
    t.string   "rua"
    t.string   "bairro"
    t.string   "cep"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "instituicao_origem"
    t.string   "disponibilidade_horario"
    t.integer  "cidade_id"
    t.integer  "supervisor_estagio_id"
    t.integer  "estagio_id"
    t.string   "seguradora"
    t.string   "numero_da_apolice"
    t.date     "data_da_emissao"
    t.date     "data_do_vencimento"
    t.string   "plano_de_saude"
    t.string   "atividades_desenvolidas_no_estagio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estagios", :force => true do |t|
    t.string   "tipo_do_estagio"
    t.string   "nivel_do_estagio"
    t.date     "inicio_do_estagio"
    t.date     "fim_do_estagio"
    t.string   "area_de_concentracao"
    t.string   "carga_horaria_semanal"
    t.string   "carga_horaria_total"
    t.string   "remunerado"
    t.string   "valor_da_bolsa"
    t.string   "outras_ajudas_de_custo"
    t.string   "obrigatorio"
    t.string   "duracao"
    t.string   "local_do_estagio"
    t.string   "departamento"
    t.string   "setor"
    t.string   "agente_de_integracao"
    t.string   "qual_agente_de_integracao"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supervisor_estagios", :force => true do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "lotacao"
    t.string   "funcao"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.integer  "tipo_de_usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
