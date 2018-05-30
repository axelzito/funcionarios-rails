json.extract! contato, :id, :nome, :matricula, :nascimento, :municipio, :estado_id, :civil_id, :sexo_id, :job_id, :workspace_id, :created_at, :updated_at
json.url contato_url(contato, format: :json)
