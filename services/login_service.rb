module Login
  include HTTParty
  base_uri 'https://api-de-tarefas.herokuapp.com'
  # base_uri CONFIG['environment']
  format :json
  headers 'Content-Type': 'application/json',
          Accept: 'application/vnd.tasksmanager.v2'
end
