require 'faker'

field3 = ["Histoire", "Mathematiques", "Francais"]


u = User.last

10.times do
  Lesson.create(user: u, title: Faker::Book.title, field: field3.sample, content: Faker::Lorem.paragraphs)
end
