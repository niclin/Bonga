%w[admin employee manager].each do |role|
  u = User.new
  u.email = "#{role}@test.com"
  u.password = '12345678'
  u.password_confirmation = '12345678'
  u.role = "#{role}"
  u.name = "#{role}"
  u.save

  puts "#{role} is created"
end
