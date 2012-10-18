class Voto < ActiveRecord::Base
  belongs_to :duelo_pessoa
  attr_accessible :data_consolidacao, :qtd_voto
end
