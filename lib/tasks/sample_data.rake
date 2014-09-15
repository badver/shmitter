namespace :db do
  desc 'Fill database with sample data'
  task populate: :environment do
    User.create!(name: 'Example User',
                 email: 'example@example.com',
                 password: 'qazxsw',
                 password_confirmation: 'qazxsw',
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password = 'qazxsw'
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end