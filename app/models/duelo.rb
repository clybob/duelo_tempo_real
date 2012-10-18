class Duelo < ActiveRecord::Base
  attr_accessible :data_fim, :data_inicio
  validates :data_inicio, presence => true
end
