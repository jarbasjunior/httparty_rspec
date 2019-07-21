module Contacts
  include HTTParty

  # url base
  base_uri CONFIG['url']

  # options
  format :json
  headers 'Content-Type': 'application/json',
          Accept: 'application/vnd.tasksmanager.2'
end
