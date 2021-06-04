# Metodos com ? no final adiciona be_ no inicio
describe 'Predicados' do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end

  it 'nil' do
    expect(defined? banana).to be_nil
  end
end
