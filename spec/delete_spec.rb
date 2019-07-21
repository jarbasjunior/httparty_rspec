describe 'request delete', :delete_tag do
  it 'delete test' do
    puts Contacts.delete('/contacts/711')
  end
end
