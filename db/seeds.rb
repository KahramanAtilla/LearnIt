require 'faker'

Topic.destroy_all
User.destroy_all

t1 = Topic.create(name: "Francais")
t2 = Topic.create(name: "Mathématiques")
t3 = Topic.create(name: "Histoire")


field3 = [t1, t2, t3]

u = User.create(first_name: "User", last_name: "Test", email: "ezedmail@email.com", password: "usertest", city: "Paris", school: "Paris Sorbonne", diploma: "M1 Droit notarial")

10.times do
	Lesson.create(user: u, title: Faker::Book.title, content: Faker::Lorem.paragraphs, topic: field3.sample)
end
