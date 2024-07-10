class LivrosController < ApplicationController
    def index
      @livros = Livro.all
    end
  
    def show
      @livro = Livro.find(params[:id])
    end
  
    def new
      @livro = Livro.new
    end
  
    def create
      @livro = Livro.new(livro_params)
      if @livro.save
        redirect_to @livro, notice: 'Livro foi criado com sucesso.'
      else
        render :new
      end
    end
  
    def edit
      @livro = Livro.find(params[:id])
    end
  
    def update
      @livro = Livro.find(params[:id])
      if @livro.update(livro_params)
        redirect_to @livro, notice: 'Livro foi atualizado com sucesso.'
      else
        render :edit
      end
    end
  
    def destroy
      @livro = Livro.find(params[:id])
      @livro.destroy
      redirect_to livros_url, notice: 'Livro foi excluído com sucesso.'
    end
  
    private
  
    def livro_params
      params.require(:livro).permit(:nome, :autor, :preco, :ativo, :data)
    end
  end
  