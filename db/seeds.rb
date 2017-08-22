# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([{ 	
	admin: true,
	name: 'Calvin',
	surname: 'Seidle',
	email: 'calvin@littlepig.cc',
	password: 'seidlc06'
}])

20.times do
	User.create([{
		admin: false,
		name: Faker::Name.first_name,
		surname: Faker::Name.last_name,
		email: Faker::Internet.email('fake'),
		password: 'password'	
	}])
end

Result.create([
	{id: 1, result: 'Successful'}, 
	{id: 2, result: 'Pending'}, 
	{id: 3, result: 'Unuccessful'} 
])


