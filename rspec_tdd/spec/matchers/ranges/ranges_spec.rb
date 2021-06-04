RSpec.describe (1..5), 'Ranges' do
  it '#cover' do
    is_expected.to cover(2)
    expect(subject).not_to cover(0, 6)
  end

  it { expect(subject).to cover(2, 5) }
  it { is_expected.not_to cover(0, 6) }
end
