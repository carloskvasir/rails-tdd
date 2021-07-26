describe 'HTTParty' do
  it 'content-type', vcr: { cassette_name: 'jsonplaceholder/posts', match_requests_on: [:body]} do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/4')
    content_type = response.headers['content-type']
    expect(content_type).to match %r{application/json}
  end
end
