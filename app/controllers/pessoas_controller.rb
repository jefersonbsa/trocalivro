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
		redirect_to pessoa_path(@pessoa)
	end

end
