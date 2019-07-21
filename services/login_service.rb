module Login
  include HTTParty
  base_uri CONFIG['url']
  format :json
  headers 'Content-Type': 'application/json',
          Accept: 'application/vnd.tasksmanager.v2'
end
