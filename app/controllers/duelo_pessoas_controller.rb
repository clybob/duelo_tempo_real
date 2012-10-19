class DueloPessoasController < ApplicationController

  def salva_redis_voto
    duelo_pessoa = DueloPessoa.find(params[:duelo_id])
    duelo_id = duelo_pessoa.duelo_id
    pessoa_id = duelo_pessoa.pessoa.id
    @voto = Voto.salva_no_redis(duelo_id, pessoa_id)
  end
  
  def consolida_votos
    duelo_id = params[:duelo_id]
    Voto.consolida_votos(duelo_id)
  end

  # GET /duelo_pessoas
  # GET /duelo_pessoas.json
  def index
    @duelo_pessoas = DueloPessoa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duelo_pessoas }
    end
  end

  # GET /duelo_pessoas/1
  # GET /duelo_pessoas/1.json
  def show
    @duelo_pessoa = DueloPessoa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duelo_pessoa }
    end
  end

  # GET /duelo_pessoas/new
  # GET /duelo_pessoas/new.json
  def new
    @duelo_pessoa = DueloPessoa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duelo_pessoa }
    end
  end

  # GET /duelo_pessoas/1/edit
  def edit
    @duelo_pessoa = DueloPessoa.find(params[:id])
  end

  # POST /duelo_pessoas
  # POST /duelo_pessoas.json
  def create
    @duelo_pessoa = DueloPessoa.new(params[:duelo_pessoa])

    respond_to do |format|
      if @duelo_pessoa.save
        format.html { redirect_to @duelo_pessoa, notice: 'Duelo pessoa was successfully created.' }
        format.json { render json: @duelo_pessoa, status: :created, location: @duelo_pessoa }
      else
        format.html { render action: "new" }
        format.json { render json: @duelo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duelo_pessoas/1
  # PUT /duelo_pessoas/1.json
  def update
    @duelo_pessoa = DueloPessoa.find(params[:id])

    respond_to do |format|
      if @duelo_pessoa.update_attributes(params[:duelo_pessoa])
        format.html { redirect_to @duelo_pessoa, notice: 'Duelo pessoa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @duelo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duelo_pessoas/1
  # DELETE /duelo_pessoas/1.json
  def destroy
    @duelo_pessoa = DueloPessoa.find(params[:id])
    @duelo_pessoa.destroy

    respond_to do |format|
      format.html { redirect_to duelo_pessoas_url }
      format.json { head :no_content }
    end
  end
end
