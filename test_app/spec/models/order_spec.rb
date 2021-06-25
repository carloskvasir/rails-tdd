require 'rails_helper'

RSpec.describe Order, type: :model do

  it 'Tem 1 pedido' do
    # customer = create(:customer)
    # sut = create(:order, customer: customer)
    sut = create(:order)
    expect(sut.customer).to be_kind_of(Customer)
  end

  it 'Tem 3 pedidos' do
    orders = create_list(:order, 3)
    expect(orders.count).to eq(3)
  end
end
