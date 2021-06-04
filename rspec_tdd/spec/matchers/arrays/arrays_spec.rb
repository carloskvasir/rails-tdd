describe Array.new([0, 1, 2, 3]), "- Array" do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1)
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1, 3, 0, 2)
  end

  it '#match_array' do
    expect(subject).to match_array([1, 3, 0, 2])
  end
end
