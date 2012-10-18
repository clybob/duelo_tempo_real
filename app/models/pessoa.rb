class Pessoa < ActiveRecord::Base
  attr_accessible :descricao, :imagem, :nome
  validates :nome, :imagem, :presence => true
end
