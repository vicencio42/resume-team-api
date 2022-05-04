# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

capstone = Capstone.create!([{name: "Sonic Memes", description: "A website that uses a Sonic the Hedgehog API to display memes", url: "will update in postico...", screenshot: "will update later"}, {name: "Recipes for Fish", description: "Users can post recipes for their pet fish and download meal plans", url: "update later", screenshot: "update later"}, {name: "Zodiac Makeup", description: "An app where you can enter your birthdate and you will get a curated makeup look.", url: "will do later", screenshot: "will do later"}])

education = Education.create!([{start_date: "09/22/08", end_date: "05/01/12", degree: "Sports Medicine", university_name: "Indiana University", details: "It was fun but it wasn't really fun."},{start_date: "09/22/07", end_date: "06/12/13", degree: "International Relationships", university_name: "DePaul", details: "It was fun but it wasn't really fun."}])

skill = Skills.create!([{skill_name: "css, js, ruby"}, {skill_name: "html, css"}])

student = Student.create!([{first_name: "George", last_name: "Michael", email: "gmike@test.com", phone_number: 8765443421, short_bio: "very short bio", linkedin_url: "n/a", twitter_handle: "n/a", personal_blig: "idk", resume: "none", github_url: "don't have one", photo: "not available"}])