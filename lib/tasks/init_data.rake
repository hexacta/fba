namespace :db do
  desc "Fill database with an admin"
  task init: :environment do
    make_admin
  end
end

def make_admin
  admin = User.create!(name:"admin",
                       email: "admin@example.com",
                       password: "admin123", password_confirmation: "admin123")
end
