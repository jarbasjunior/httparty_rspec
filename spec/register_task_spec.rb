describe 'register' do
  def login(email_field, password_field)
    @body = {
      session: {
        email: email_field,
        password: password_field
      }
    }.to_json

    @login = Login.post('/sessions', body: @body)
    puts JSON.pretty_generate(@login.parsed_response)
  end

  context 'task' do
    before { login('brunobatista66@gmail.com', '123456') }
    it 'success' do
      expected_title = 'I created a task'
      @header = {
        'Content-Type': 'application/json',
        Accept: 'application/vnd.tasksmanager.v2',
        Authorization: @login.parsed_response['data']['attributes']['auth-token']
      }

      @body = {
        task: {
          title: 'I created a task',
          description: 'Job description created',
          deadline: '2019-07-21 17:00:00',
          done: true
        }
      }.to_json

      @tasks = Register.post('/tasks', body: @body, headers: @header)
      puts JSON.pretty_generate(@tasks.parsed_response)
      expect(@tasks.parsed_response['data']['attributes']['title']).to eql expected_title
    end
  end
end
