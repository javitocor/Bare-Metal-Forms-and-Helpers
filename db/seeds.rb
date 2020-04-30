100.times do
  User.create(
    username: Faker::GreekPhilosophers.name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end
