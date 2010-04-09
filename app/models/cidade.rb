class Cidade < ActiveRecord::Base
  belongs_to :estado
  has_many :empresas
  has_many :estagiarios
  
  def default?
    nome == "Campos dos Goytacazes"
  end

  def to_s
    nome
  end
end
