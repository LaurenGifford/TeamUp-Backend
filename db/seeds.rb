# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Team.destroy_all
# Teammate.destroy_all
# Project.destroy_all
# Task.destroy_all
# UrTask.destroy_all


# Teams
team1 = Team.create(department: "Marketing", leader: "Alvin")
team2 = Team.create(department: "Engineering", leader: "Triss")
team3 = Team.create(department: "Accounting", leader: "Jess")

# Teammates
alvin = Teammate.create(name: "Alvin", password: "123", points: "1000", team_id: team1.id)
jess = Teammate.create(name: "Jess", password: "123", points: "0", team_id: team1.id)
triss = Teammate.create(name: "Triss", password: "123", points: "300", team_id: team1.id)
dave = Teammate.create(name: "Dave", password: "123", points: "2000", team_id: team2.id)
abby = Teammate.create(name: "Abby", password: "123", points: "10000", team_id: team3.id)
pat = Teammate.create(name: "Pat", password: "123", points: "20", team_id: team2.id)


# Projects
website = Project.create(title: "Launch New Website", priority: 6, notes: 'Design and build a new website for all of our company information.', team_id: team2.id)
ad = Project.create(title: "Create Add Campaign", priority: 3, notes: 'We are rolling out a new line of products and need to advertise them.', team_id: team1.id)
commercial = Project.create(title: "Plan a Commercial", priority: 4, notes: 'Create Superbowl commercial for new product line.', team_id: team1.id)
survey = Project.create(title: "Customer Feedback", priority: 8, notes: 'We need Customer feedback regarding our latest products.', team_id: team1.id)
budget = Project.create(title: "Budget", priority: 8, notes: 'This company needs a budget', team_id: team3.id)

# Tasks
t1 = Task.create(title: "Hire Designer", description: "Get someone with an awesome portfolio who can make this site great!", due_date: DateTime.new(2021,5,11), completed: false, project_id: website.id)
t2 = Task.create(title: "Hire Engineer", description: "We need a Rails backend and a React frontend, choose accordingly.", due_date: DateTime.new(2021,4,12), completed: false, project_id: website.id)
t3 = Task.create(title: "Mockup", description: "Draw out what the site should look like.", due_date: DateTime.new(2021,5,1), completed: true, project_id: website.id)
t4 = Task.create(title: "Promotional Topic", description: "Brainstorm to plan what we should promote.", due_date: DateTime.new(2021,4,2), completed: false, project_id: ad.id)
t5 = Task.create(title: "Scout locations", description: "Find a site to film commercial.", due_date: DateTime.new(2021,4,8), completed: false, project_id: commercial.id)
t6 = Task.create(title: "Film", description: "Shoot the commercial.", due_date: DateTime.new(2021,4,17), completed: false, project_id: commercial.id)
t7 = Task.create(title: "Plan Questions", description: "Write a list of questions to include in the survey.", due_date: DateTime.new(2021,4,6), completed: false, project_id: survey.id)
t8 = Task.create(title: "Create Survey", description: "Enter approved questions into survey sheet.", due_date: DateTime.new(2021,4,1), completed: false, project_id: survey.id)
t9 = Task.create(title: "Distribute", description: "Send survey to recent customers.", due_date: DateTime.new(2021,3,31), completed: false, project_id: survey.id)
t10 = Task.create(title: "Determine Overhead", description: "Look at balance sheets for fixed costs.", due_date: DateTime.new(2021,4,3), completed: false, project_id: budget.id)
t11 = Task.create(title: "Determine Costs", description: "Consult balance sheets for daily expenditures.", due_date: DateTime.new(2021,4,2), completed: false, project_id: budget.id)
t12 = Task.create(title: "Create balance sheet", description: "Use accoutning software to organize balances.", due_date: DateTime.new(2021,4,21), completed: false, project_id: budget.id)
t13 = Task.create(title: "Create Artwork", description: "Get an artist to draw compelling art.", due_date: DateTime.new(2021,4,11), completed: false, project_id: ad.id)
t14 = Task.create(title: "Write Copy", description: "Make it witty and concise.", due_date: DateTime.new(2021,4,3), completed: false, project_id: ad.id)
t15 = Task.create(title: "Add assets", description: "Photos, links, videos, etc.", due_date: DateTime.new(2021,4,7), completed: false, project_id: website.id)


# UrTasks
# UrTask.create(teammate_id: alvin.id, task_id: t1.id)
# UrTask.create(teammate_id: alvin.id, task_id: t2.id)
# UrTask.create(teammate_id: alvin.id, task_id: t6.id)
# UrTask.create(teammate_id: alvin.id, task_id: t7.id)
# UrTask.create(teammate_id: alvin.id, task_id: t5.id)
# UrTask.create(teammate_id: jess.id, task_id: t6.id)
# UrTask.create(teammate_id: triss.id, task_id: t3.id)
# UrTask.create(teammate_id: dave.id, task_id: t4.id)
# UrTask.create(teammate_id: abby.id, task_id: t8.id)
# UrTask.create(teammate_id: abby.id, task_id: t1.id)
# UrTask.create(teammate_id: dave.id, task_id: t5.id)
# UrTask.create(teammate_id: pat.id, task_id: t2.id)



puts 'seeded 🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱seeded'