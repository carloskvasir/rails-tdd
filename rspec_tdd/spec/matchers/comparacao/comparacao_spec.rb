describe 'Matchers de Comparação' do
  it '> - Menor que' do
    expect(5).to be > 1
  end

  it '>= - Menor que ou igual' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end

  it '< - Maior que' do
    expect(5).to be < 10
  end

  it '<= - Maior que ou igual' do
    expect(5).not_to be <= 2
    expect(5).to be <= 12
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
    expect(7).to be_between(2, 7).inclusive
  end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
    expect(3).to be_between(2, 7).exclusive
    expect(6).to be_between(2, 7).exclusive
  end

  it 'match - regex' do
    expect('email@domain.com').to match(/.?@.?/)
  end

  it 'start_with' do
    expect('fulano xxx').to start_with('fulano')
    expect([1, 2, 3, 4]).to start_with(1)
  end

  it 'end_with' do
    expect('fulano xxx').to end_with('xxx')
    expect([1, 2, 3, 4]).to end_with(4)
  end
end
