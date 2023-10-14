#importar contactos
puts 'Importing users...'

#rails_runner 'load(File.join(Rails.root, "db", "seeds", "rb", "users.rb"))'
20.times do
    User.create(
        email: Faker::Internet.email,
        password: '123456',
        password_confirmation: '123456',
        name: Faker::Name.name_with_middle,
        phone: Faker::PhoneNumber.cell_phone,
        role: rand(0..1)
    )
end