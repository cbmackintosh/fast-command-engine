# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  id: 1,
  email: 'cbmackintosh@outlook.com',
  password_digest: 'ajax4',
  firstname: 'Cameron',
  lastname: 'Mackintosh',
  jobtitle: 'Software Engineer',
  organization: 'Unemployed',
  phone: '+19379265733'
])

incidents = Incident.create([
  {
    name: 'Jim Creek Fire',
    summary: 'This is a wildfire in Colorado and its cray cray',
    user: users.first
  },
  {
    name: 'Columbine High School mass shooting',
    summary: 'Infamous mass shooting at a high school in Colorado',
    user: users.first
  }
])

posts = Post.create([
  {
    title: 'Fire crews achieve 90% containment',
    body: 'Fure crews on Tuesday announced 90% containment of the Jim Creek Fire, however evacuations remain mandatory',
    incident: incidents.first
  }
])