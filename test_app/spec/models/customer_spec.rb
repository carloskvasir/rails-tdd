# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Customer', type: :model do
  it '#full_name' do
    customer = create(:customer)
    expect(customer.full_name).to start_with('Sr. ')
  end

  it '#full_name - Sobrescrevendo Atributo' do
    customer = create(:customer, name: 'Carlos Lima')
    expect(customer.full_name).to eq('Sr. Carlos Lima')
  end

  it { expect{ create(:customer) }.to change {Customer.all.size}.by(1) }
end
