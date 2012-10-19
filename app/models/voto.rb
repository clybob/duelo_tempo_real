require 'redis'

class Voto < ActiveRecord::Base
  validates :duelo_pessoa_id, :qtd_voto, :data_consolidacao, :presence => true
  belongs_to :duelo_pessoa
  attr_accessible :data_consolidacao, :qtd_voto, :duelo_pessoa_id

  REDIS_HOST = 'localhost'
  REDIS_PORT = 6379

  @redis = Redis.new(host: REDIS_HOST, port: REDIS_PORT)

  def self.salva_no_redis(id_duelo, id_pessoa)
    @redis.hincrby("duelo-#{id_duelo}", "pessoa-#{id_pessoa}", 1)
  end
  
  def self.consolida_votos(duelo_id)
    votos_redis = @redis.hgetall("duelo-#{duelo_id}")
    votos_redis.each do |chave, valor|
      duelo_pessoa = chave.split('-')[1]
      qtd_voto = valor
      Voto.create(duelo_pessoa_id: duelo_pessoa, qtd_voto: qtd_voto, data_consolidacao: Time.now)
      participante_duelo = DueloPessoa.find_by_pessoa_id(duelo_pessoa)
      participante_duelo.update_attribute(:votos, qtd_voto)
    end
    puts "OLA!"
  end

end
