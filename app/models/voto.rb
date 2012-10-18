require 'redis'

class Voto < ActiveRecord::Base
  belongs_to :duelo_pessoa
  attr_accessible :data_consolidacao, :qtd_voto

  REDIS_HOST = 'localhost'
  REDIS_PORT = 6379

  redis = Redis.new(host: REDIS_HOST, port: REDIS_PORT)

  def salva_no_redis
    debugger
  end

end
