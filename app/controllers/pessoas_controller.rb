class PessoasController < ApplicationController
  def index
		@pessoas = Pessoa.all
  end

	def show
		@pessoa = Pessoa.find(params[:id])
	end

	def new
		@pessoa = Pessoa.new
	end

	def create
		@pessoa = Pessoa.new(params[:pessoa])
		@pessoa.save
		flash[:message] = "Usuario '#{@pessoa.nome}' criado!"
		redirect_to pessoa_path(@pessoa)
	end

	def destroy
		@pessoa = Pessoa.find(params[:id])
		@pessoa.destroy
		flash[:message] = "Usuario '#{@pessoa.nome}' removido!"
		redirect_to pessoas_path
	end

end
