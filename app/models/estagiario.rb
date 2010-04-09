require 'brazilian-rails'
class Estagiario < ActiveRecord::Base
  belongs_to :supervisor_estagio
  belongs_to :estagio
  belongs_to :cidade
  validates_presence_of :nome
  validates_uniqueness_of :matricula
  #validates_format_of :periodo, :with => %r{(\d{2}°)?} , :with => /\0[0-9]+\9/ ,:allow_blank => true
  validates_numericality_of :periodo, :telefone, :celular, :identidade, :allow_blank => true
  validates_format_of :email, :with => /(.+)@(.+)\.(.{3})/,  :message => ": erro no formato, por favor revise.", :allow_blank => true
  usar_como_cpf :cpf
  validates_format_of :cep, :with => %r{\d{5}(-\d{3})?} , :allow_blank => true
end

