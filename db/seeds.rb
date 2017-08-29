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
	password: 'seidlc06',
	last_sign_in_ip: '192.168.1.135'
}])

99.times do
	User.create([{
		admin: false,
		name: Faker::Name.first_name,
		surname: Faker::Name.last_name,
		email: Faker::Internet.email('fake'),
		password: 'password',
		last_sign_in_ip: Faker::Internet.ip_v4_address	
	}])
end

# ##user1
# for i in 1..20 do
# UserJob.create([{
# 	user_id: i,
# 	job_id: 1,
#     result_id: 2,
#     applied: true,
#     interview: true,
#     shortlist: true,
#     final: false,
#     reason: "blah blah blah"
# }])
# end

# ##user2
# for j in 21..40 do 
# UserJob.create([{
# 	user_id: j,
# 	job_id: 2,
#     result_id: 2,
#     applied: true,
#     interview: false,
#     shortlist: false,
#     final: false,
#     reason: "blah blah blah"
# }])
# end

# ##user4
# for k in 41..60 do
# UserJob.create([{
# 	user_id: k,
# 	job_id: 3,
#     result_id: 3,
#     applied: true,
#     interview: true,
#     shortlist: true,
#     final: false,
#     reason: "blah blah blah"
# }])
# end

# ##user5
# for l in 61..75 do
# UserJob.create([{
# 	user_id: l,
# 	job_id: 4,
#     result_id: 1,
#     applied: true,
#     interview: true,
#     shortlist: true,
#     final: true,
#     reason: "blah blah blah"
# }])
# end

# 500.times do
# 	Job.create([{
# 		job_link: Faker::Internet.url,
#     	job_name: Faker::Company.profession,
#     	company_name: Faker::Company.name,
#     	job_description: Faker::Company.catch_phrase
# 	}])
# end

Result.create([
	{id: 1, result: 'Successful'}, 
	{id: 2, result: 'Pending'}, 
	{id: 3, result: 'Unsuccessful'} 
])

# Requirement.create ([
# {requirement:'aaa', job_id:1},
# {requirement:'bbb', job_id:2},
# {requirement:'ccc', job_id:3},
# {requirement:'ddd', job_id:4}
# ])

class Entry
    def initialize(title, info, date, link)
      @link = link
      @title = title
      @info = info
      @date = date
    end  
end


require 'open-uri'
for i in 1..48 do
  doc = Nokogiri::HTML(open("http://www.puffandpass.co.za/tag/information-technology/page/#{i}"))
  entries = doc.css('.post')
  @entriesArray = []
  entries.each do |entry|
    title = entry.css('h2.title>a').text
    link = entry.css('h2.title>a')[0]['href']
    info = entry.css('section.entry-summary>p').text.to_s.strip
    date = entry.css('span.entry-date').text
    @entriesArray << Entry.new(title, info, date, link)
    Job.create([{
    	:job_name => title, 
    	:job_description => info, 
    	:created_at => Time.now, 
    	:job_link => link, 
    	:company_name => "puffnpass"}])
  end
end

# require 'open-uri'
# for j in 1..48 do
#   doc2 = Nokogiri::HTML(open("http://www.puffandpass.co.za/tag/computer-science/page/#{j}"))
  
#   entries = doc2.css('.post')
#   @entriesArray = []
#   entries.each do |entry|
#     title = entry.css('h2.title>a').text
#     link = entry.css('h2.title>a')[0]['href']
#     info = entry.css('section.entry-summary>p').text.to_s.strip
#     date = entry.css('span.entry-date').text
#     @entriesArray << Entry.new(title, info, date, link)
#     Job.create([{
#       :job_name => title, 
#       :job_description => info, 
#       :created_at => Time.now, 
#       :job_link => link, 
#       :company_name => "puffnpass"}])
#   end
# end