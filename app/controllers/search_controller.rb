class SearchController < ApplicationController
  #def busca
  #end

  def index
    @trabalhadors = Trabalhador.all
    if params[:search]
      @trabalhadors = Trabalhador.search(params[:search])
    else
      #@trabalhadors = Trabalhador.all
    end

    if params[:search_sexo]
      @trabalhadors = Trabalhador.search_sexo(params[:search_sexo])
    else
      #@trabalhadors = Trabalhador.all
    end

    if params[:search_workspace]
      @trabalhadors = Trabalhador.search_workspace(params[:search_workspace])
    else
      #@trabalhadors = Trabalhador.all
    end

    if params[:search_job]
      @trabalhadors = Trabalhador.search_job(params[:search_job])
    else
      #@trabalhadors = Trabalhador.all
    end
  end


end
