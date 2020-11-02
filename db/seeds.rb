# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Worker.destroy_all
CoOp.destroy_all
CoOpWorker.destroy_all
co_op = []
 5.times do
    co_op << CoOp.create(name: Faker::Company.name, location: Faker::Address.city)
end

workers = []
20.times do 
    workers << Worker.create(name: Faker::FunnyName.name, city: Faker::Address.city)
end

30.times do
    CoOpWorker.create(co_op_id: co_op.sample.id, worker_id: workers.sample.id)
end