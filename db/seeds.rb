u = User.new
u.email = 'admin@test.com'
u.password = '12345678'
u.password_confirmation = '12345678'
u.role = 'admin'
u.name = 'Admin'
u.save

puts 'Admin is created'
