# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  fixtures :customers

  it 'Create a Customer' do
    customer = customers(:carlos)
    expect(customer.full_name).to eq('Sr. Carlos Lima')
  end
end
