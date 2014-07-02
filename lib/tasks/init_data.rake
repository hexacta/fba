namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
  admin = User.create!(name:"admin",
                       email: "admin@example.com",
                       password: "admin123", password_confirmation: "admin123")
end