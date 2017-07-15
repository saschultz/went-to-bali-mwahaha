class Seed

  admin = User.new
  admin.name = 'admin'
  admin.email = 'admin@email.com'
  admin.password = 'xxxxxx'
  admin.admin = true
  admin.save!

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: Faker::LoremPixel.image("50x60"))
    end
  end
end

Seed.begin
