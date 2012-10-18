class Pessoa < ActiveRecord::Base
  attr_accessible :descricao, :imagem, :nome
end
