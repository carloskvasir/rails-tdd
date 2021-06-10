$counter = 0

describe 'let' do
  let(:sut) { $counter += 1 }

  it 'memoriza o valor' do
    expect(sut).to eq 1
    expect(sut).to eq 1
  end

  it 'não é cacheado entre os testes' do
    expect(sut).to eq 2
  end
end
