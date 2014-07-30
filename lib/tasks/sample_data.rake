namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_roles
  end
end

def make_users
  admin = User.create!(name: "Example User",
                       email: "example@example.com",
                       password: "foobar",
                       password_confirmation: "foobar",
                       admin: true)
  99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@example.com"
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
 end
end

def make_roles
    role1 = Role.create!(name: "Donor")
    role2 = Role.create!(name: "Customer")
    role3 = Role.create!(name: "Employer")
 end 