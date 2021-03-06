class Seed

  def self.begin
    seed = Seed.new
    seed.destroy_seeds
    seed.generate_products
    seed.generate_admin
  end

  def generate_products
    20.times do |i|
      Product.create!(
        name: Faker::Lorem.word,
        price: rand(10...100),
        description: Faker::Lorem.sentence(5, false, 0).chop,
        photo: URI.parse(Faker::LoremPixel.image)
      )
    end
  end

  def generate_admin
    User.create(
            name: "Guy",
            email: "test@gmail.com",
            password: "password",
            avatar: URI.parse(Faker::LoremPixel.image),
            admin: true
          )
  end

  def destroy_seeds
    User.destroy_all
    Product.destroy_all
  end
end

Seed.begin
p "Created #{Product.count} products"
p "Created #{User.count} users"
