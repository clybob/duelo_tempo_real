class DueloPessoa < ActiveRecord::Base
  belongs_to :duelo
  belongs_to :pessoa
  attr_accessible :votos, :duelo_id, :pessoa_id
end
