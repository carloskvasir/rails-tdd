require 'httparty'

describe 'HTTParty' do
  it 'HTTParty' do
    response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/2')
    content_type = response.headers['content-type']
    p content_type
    expect(content_type).to match(/application\/json/)
  end
end
