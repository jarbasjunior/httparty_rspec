describe 'request edit', :put_patch_tag do
  context 'context request edit' do
    it 'put test' do
      @body = {
        'id': 882,
        'name': 'Nome',
        'last_name': 'Fake 882',
        'email': 'nome_fake_882@email.com',
        'age': '30',
        'phone': '987654321',
        'address': 'Rua Endereço Fake',
        'state': 'Estado Fake',
        'city': 'Cidade Fake'
      }.to_json

      puts JSON.pretty_generate(Contacts.put('/contacts/882', body: @body).parsed_response)
    end

    it 'patch test' do
      @body = {
        'id': 888,
        'name': 'Nome',
        'last_name': 'Fake 888',
        'email': 'nome_fake_888@email.com',
      }.to_json

      puts JSON.pretty_generate(Contacts.put('/contacts/888', body: @body).parsed_response)
    end
  end
end
