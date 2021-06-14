describe 'Test Double' do
  it '__' do
    sut = double 'User'
    allow(sut).to receive_messages(name: 'Carlos', age: 27)
    allow(sut).to receive(:password).and_return('secret')
    puts sut.name
    puts sut.password
  end
end
