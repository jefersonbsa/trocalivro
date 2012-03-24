class PessoaController < ApplicationController
  def index
		@pessoas = Pessoa.all
  end

	def show
		@pessoa = Pessoa.find(params[:id])
	end
end
