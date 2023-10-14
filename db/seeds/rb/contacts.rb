#importar contactos
puts 'Importing contacts...'

#rails_runner 'load(File.join(Rails.root, "db", "seeds", "rb", "contacts.rb"))'
20.times do
    Contact.create(
        name: Faker::Name.name_with_middle,
        email: Faker::Internet.email,
        message: Faker::Lorem.paragraphs(number: 3)
    )
end