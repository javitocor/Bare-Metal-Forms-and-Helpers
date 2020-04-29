50.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
