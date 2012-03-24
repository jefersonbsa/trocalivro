class PessoaController < ApplicationController
  def index
		@pessoas = Pessoa.all
  end
end
