json.extract! contato, :id, :trabalhador_id, :telefone, :celular, :email, :created_at, :updated_at
json.url contato_url(contato, format: :json)
