RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(13) }
  it { expect(11.5).to be_not_within(0.5).of(13) }
  it { expect([12.5, 12.8, 12.4]).to all be_within(0.9).of(12) }
end
