require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
    sut = Pessoa.new
    sut.nome = 'Carlos'
    sut.idade = 26

    expect(sut).to have_attributes(
      nome: a_string_starting_with('C'),
      idade: (a_value > 18)
    )
  end
end
