describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'jsonplaceholder/posts', record: :new_episodes } do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/5')
    content_type = response.headers['content-type']
    expect(content_type).to match %r{application/json}
  end
end

