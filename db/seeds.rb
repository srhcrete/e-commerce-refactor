class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.generate_admin
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
    end
  end

  def generate_admin
    User.create(username: "aGuy",
            email: "test@gmail.com",
            password: "password",
            is_female: true,
            date_of_birth: Date.new,
            admin: true)
  do
end

Seed.begin
