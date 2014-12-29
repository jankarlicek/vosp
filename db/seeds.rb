# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1=Route.new(:label => "R1")
r2=Route.new(:label => "R2")

c1=Coordinate.new(:coordinate_E => 50.1111, :coordinate_N => 15.1111)
c2=Coordinate.new(:coordinate_E => 50.2221, :coordinate_N => 15.2221)
c3=Coordinate.new(:coordinate_E => 50.3331, :coordinate_N => 15.3331)
c4=Coordinate.new(:coordinate_E => 50.4441, :coordinate_N => 15.4441)
c5=Coordinate.new(:coordinate_E => 50.5551, :coordinate_N => 15.5551)

n1=Node.new(:label => "N1")

r1.save
r2.save

c1.save
c2.save
c3.save
c4.save
c5.save

n1.save

#c1.node = n1