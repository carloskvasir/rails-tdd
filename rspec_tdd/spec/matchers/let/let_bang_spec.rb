$count = 0

describe 'let!' do
  ordem_de_chamada = []

  let!(:sut) do
    ordem_de_chamada << :let!
    $count += 1
  end

  it 'chama o método helper antes do teste' do
    ordem_de_chamada << :exemplo
    expect(ordem_de_chamada).to eq([:let!, :exemplo])
    expect(sut).to eq(1)
  end
end
