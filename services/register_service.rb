module Register
  include HTTParty
  base_uri 'https://api-de-tarefas.herokuapp.com'
  # base_uri CONFIG['environment']
  format :json
end
