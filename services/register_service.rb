module Register
  include HTTParty
  base_uri CONFIG['url']
  format :json
end
