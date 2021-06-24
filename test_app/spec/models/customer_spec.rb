# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Customer', type: :model do
  it 'Create a Customer' do
    customer = create(:customer)
    expect(customer.full_name).to eq('Sr. Carlos Lima')
  end
end
