require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'belongs_to' do
    # customer = create(:customer)
    # sut = create(:order, customer: customer)
    sut = create(:order)
    expect(sut.customer).to be_kind_of(Customer)
  end

  it 'Tem 3 pedidos - create_list' do
    orders = create_list(:order, 3)
    expect(orders.count).to eq(3)
  end

  it 'has_many' do
    customer = create(:customer_with_orders, qtt_orders: 5)
    expect(customer.orders.count).to eq(5)
  end
end
