class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates(:email, :name, presence: true)

  validates(:password, length: { in: 6..12 }, format: { with: /\D+\d{1}/i }, presence: true)

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
