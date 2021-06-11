describe 'Matcher output' do
  it { expect{puts 'Carlos'}.to output.to_stdout }
  it { expect{print 'Carlos'}.to output('Carlos').to_stdout }
  it { expect{puts 'Carlos'}.to output(/Carlos/).to_stdout }

  it { expect{ warn 'Carlos'}.to output.to_stderr }
  it { expect{ warn 'Carlos'}.to output("Carlos\n").to_stderr }
  it { expect{ warn 'Carlos'}.to output(/Carlos/).to_stderr }
end
