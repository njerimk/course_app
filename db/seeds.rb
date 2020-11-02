# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
students = []
courses = []

10.times do 
    students << Student.create(name: Faker::Name.name, gender: [true, false].sample, age: (18..21).to_a.sample)
    courses << Course.create(name: Faker::ProgrammingLanguage.name, 
            room: (350..375).to_a.sample.to_s, 
            day: ["Mondays", "Tuesdays", "Wednesdays", "Thursdays", "Fridays"].sample, 
            time: (1..12).to_a.sample.to_s + " " + ["AM", "PM"].sample)
end

50.times do
    Enroll.create(student_id: students.sample.id, course_id: courses.sample.id)
end
