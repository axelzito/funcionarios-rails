module ApplicationHelper

  ESTADOS_BRASILEIROS = [
      ["Acre", "AC"],
      ["Alagoas", "AL"],
      ["Amapá", "AP"],
      ["Amazonas", "AM"],
      ["Bahia", "BA"],
      ["Ceará", "CE"],
      ["Distrito Federal", "DF"],
      ["Espírito Santo", "ES"],
      ["Goiás", "GO"],
      ["Maranhão", "MA"],
      ["Mato Grosso", "MT"],
      ["Mato Grosso do Sul", "MS"],
      ["Minas Gerais", "MG"],
      ["Pará", "PA"],
      ["Paraíba", "PB"],
      ["Paraná", "PR"],
      ["Pernambuco", "PE"],
      ["Piauí", "PI"],
      ["Rio de Janeiro", "RJ"],
      ["Rio Grande do Norte", "RN"],
      ["Rio Grande do Sul", "RS"],
      ["Rondônia", "RO"],
      ["Roraima", "RR"],
      ["Santa Catarina", "SC"],
      ["São Paulo", "SP"],
      ["Sergipe", "SE"],
      ["Tocantins", "TO"]
  ]

  def options_for_states(selected)
    options_for_select(ESTADOS_BRASILEIROS, selected)
  end

  def busca_trabalhador(params)
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
