class Estagio < ActiveRecord::Base
  has_many :estagiarios
  belongs_to :empresa
end

