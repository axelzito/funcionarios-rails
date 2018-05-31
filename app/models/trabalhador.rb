class Trabalhador < ApplicationRecord

  #Cria validação para nome, trabalho, area e matricula
  #validates  :nome, :matricula, :workspace, :job_role, {presence: [true:'Campo obrigatório']}
  validates_presence_of :nome, :matricula, :workspace, :job_role, message: 'Campo obrigatorio!'

  #Valida se o nome tem valores alphanumericos
  validates  :nome,
             :format => {:with => /[A-Za-z]+/,
                         :message => "Permitido somente caracteres alphanuméricos"}

  #Valida se a matricula é unica
  validates_uniqueness_of :matricula, message: 'A matricula já existe'

  #Busca por nome
  #def self.search(query)
  #  where("nome like ?", "%#{query}%")
  #end

  scope :search, ->(query) {where("nome like ?", "%#{query}%")}
  scope :search_sexo, ->(query_sexo) {where("sexo like ?", "%#{query_sexo}%")}
  scope :search_job, ->(query_job) {where("job_role like ?", "%#{query_job}%")}
  scope :search_workspace, ->(query_workspace) {where("workspace like ?", "%#{query_workspace}%")}

end
