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

  it 'Herança' do
    customer = create(:customer_default)
    expect(customer.vip).to eq(false)
  end

  it 'Usando o attributes_for' do
    attrs = attributes_for(:customer)
    # puts attrs
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with('Sr. ')
  end

  it 'Atributo Transitório' do
    customer = create(:customer_default, upcased: true)
    expect(customer.name.upcase).to eq(customer.name)
  end

  it { expect { create(:customer) }.to change { Customer.all.size }.by(1) }
end
