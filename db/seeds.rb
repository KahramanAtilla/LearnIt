require 'faker'

Topic.destroy_all
User.destroy_all
Lesson.destroy_all

t1 = Topic.create(name: "Francais")
t2 = Topic.create(name: "Mathématiques")
t3 = Topic.create(name: "Histoire")
t4 = Topic.create(name: "Biologie")
t5 = Topic.create(name: "Physique")
t6 = Topic.create(name: "Chimie")
t7 = Topic.create(name: "Géographie")
t8 = Topic.create(name: "Philosophie")
t9 = Topic.create(name: "Droit")
t10 = Topic.create(name: "Eco-Gestion")

field3 = [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10]

u = User.create(first_name: "User", last_name: "Test", email: "ezedmail@email.com", password: "usertest", city: "Paris", school: "Paris Sorbonne", diploma: "M1 Droit notarial")

200.times do
	Lesson.create(user: u, title: Faker::Book.title, content: Faker::Lorem.sentences(number: 400), topic: field3.sample)
end
