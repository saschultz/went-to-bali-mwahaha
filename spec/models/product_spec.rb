require 'rails_helper'

describe Product do
  it { should have_many :order_items }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :price }
end
