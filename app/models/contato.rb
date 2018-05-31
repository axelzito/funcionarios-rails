class Contato < ApplicationRecord
  belongs_to :trabalhador

  #Cria validação para telefone, celular e email
  validates_presence_of :telefone, :celular, :email, message: 'Campo obrigatorio!'

  #Valida se o nome tem valores numericos
  validates  :telefone, :celular,
             :format => {:with => /[0-9]/,
                         :message => "Permitido somente numeros"}

  #Valida se o email é unico
  validates_uniqueness_of :email, message: 'O email já existe'

  #valida se o contato já esta cadastrado
  validates_uniqueness_of :trabalhador_id, message: 'Contato já cadastrado'

  # tentei fazer a validação dos dados para um mesmo contato se o telefone é igual
  # mas so consegui ir ate ai

  # validates_uniqueness_of :telefone, scope: :user_id, unless: :exist_telefone
  # validates_uniqueness_of :celular, scope: :user_id, unless: :exist_celular
  # validates_uniqueness_of :email, scope: :user_id, unless: :exist_email
  #
  # def exist_telefone
  #   exists.where(trabalhador_id: trabalhador_id).where(telefone.equal?(telefone))
  # end
  #
  # def exist_celular
  #   exists.where(trabalhador_id: trabalhador_id).where(celular.exists)
  # end
  #
  # def exist_email
  #   exists.where(trabalhador_id: trabalhador_id).where(email.exists)
  # end

end
