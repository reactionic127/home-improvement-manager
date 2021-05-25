puts '== Seeding database =='

10.times do |i|
  types = ['private', 'public']
  status = ['created', 'started', 'stopped', 'completed']
  Project.create!(
    name: Faker::Lorem.sentence,
    description: Faker::Lorem.sentence,
    project_type: types[rand(0...1)],
    estimated_level: rand(20...30),
    actual_level: rand(10...19),
    status: status[rand(0...3)]
  )
end
