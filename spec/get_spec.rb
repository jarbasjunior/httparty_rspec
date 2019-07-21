describe 'request get', :get_tag do
  it 'get test' do
    # puts JSON.pretty_generate(Contacts.get('/contacts/695'))
    # response = JSON::PrettyPrint.prettify Contacts.get('/contacts/712')
    response = Contacts.get('/contacts/712')
    # puts response.display
    # puts response.http_version
    # puts response.inspect
    # puts response.parsed_response
    # puts response.code

    # .body se o response já estiver no formato json
    # response.body['data']['attributes']['name']

    # converte o response para json, para acessar os atributos dentro dele
    response_to_json = response.parsed_response
    puts JSON.pretty_generate(response_to_json)
    expect(response.code).to eql 200
    expect(response_to_json['data']['attributes']['name']).to eql 'bruno batista 901'
    expect(response_to_json['data']['attributes']['email']).to eql 'brunotop88991@gmail.com'
    expect(response_to_json['data']['attributes']['age']).to eql 28
  end
end
