require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instance_of - Is this class?' do
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of - Test herance' do
    sut = StringNaoVazia.new
    expect(sut).to be_kind_of(String)
    expect(sut).to be_kind_of(StringNaoVazia)
  end

  it 'respond_to - Have this method?' do
    expect('banana').to respond_to('count')
    expect('banana').to respond_to(:size)
  end

  it 'be_a(n) - Similar be_kind_of' do
    sut = StringNaoVazia.new
    expect(sut).to be_an(String)
    expect(sut).to be_a(StringNaoVazia)
  end
end
