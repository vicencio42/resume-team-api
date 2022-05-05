# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
student = Student.create!([{first_name: "George", last_name: "Michael", email: "gmike@test.com", phone_number: 5443421, short_bio: "very short bio", linkedin_url: "n/a", twitter_handle: "n/a", personal_blog: "idk", resume: "none", github_url: "don't have one", photo: "not available"}, {first_name: "Jill", last_name: "Peters", email: "jpp@test.com", phone_number: 8334455, short_bio: "very short bio", linkedin_url: "n/a", twitter_handle: "n/a", personal_blog: "idk", resume: "none", github_url: "don't have one", photo: "not available"}])

capstone = Capstone.create!([{student_id: 1, name: "Sonic Memes", description: "A website that uses a Sonic the Hedgehog API to display memes", url: "will update in postico...", screenshot: "will update later"}, {student_id: 2, name: "Recipes for Fish", description: "Users can post recipes for their pet fish and download meal plans", url: "update later", screenshot: "update later"}])

education = Education.create!([{student_id: 1, start_date: "09/22/08", end_date: "05/01/12", degree: "Sports Medicine", university_name: "Indiana University", details: "It was fun but it wasn't really fun."},{student_id: 2, start_date: "09/22/07", end_date: "06/12/13", degree: "International Relationships", university_name: "DePaul", details: "It was fun but it wasn't really fun."}])

skill = Skill.create!([{student_id: 1, skill_name: "css, js, ruby"}, {student_id: 2, skill_name: "html, css"}])

