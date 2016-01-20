json.array!(@logins) do |login|
  json.extract! login, :id, :estado, :sesion, :clase_usuario, :usuario_id
  json.url login_url(login, format: :json)
end
