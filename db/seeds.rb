# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 file = File.open('./db/logs.json')
  puts "killing all repos"
 Repository.destroy_all


 repositories = JSON.load(file)
 repo_instances = []
 repo_names = []

repositories.each do |repo|
  repo_instances << Repository.create!(timestamp: repo["@timestamp"], http_host: repo["http_host"], bytes: repo["bytes"].to_i)
end

repo_instances.map do |repo|
  repo_names << repo.http_host unless repo_names.include?(repo.http_host)
end








