# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Base.create(color: 'Lead Blue', image: 'lead_hood_neck.jpg', hood: true, neck: true)
Base.create(color: 'Lead Blue', image: 'lead_hood.jpg', hood: true, neck: false)
Base.create(color: 'Lead Blue', image: 'lead_neck.jpg', hood: false, neck: true)
Base.create(color: 'Lead Blue', image: 'lead.jpg', hood: false, neck: false)

Base.create(color: 'Camel Yellow', image: 'camel_hood_neck.jpg', hood: true, neck: true)
Base.create(color: 'Camel Yellow', image: 'camel_hood.jpg', hood: true, neck: false)
Base.create(color: 'Camel Yellow', image: 'camel_neck.jpg', hood: false, neck: true)
Base.create(color: 'Camel Yellow', image: 'camel.jpg', hood: false, neck: false)

Base.create(color: 'Worn Out Garnet', image: 'garnet_hood_neck.jpg', hood: true, neck: true)
Base.create(color: 'Worn Out Garnet', image: 'garnet_hood.jpg', hood: true, neck: false)
Base.create(color: 'Worn Out Garnet', image: 'garnet_neck.jpg', hood: false, neck: true)
Base.create(color: 'Worn Out Garnet', image: 'garnet.jpg', hood: false, neck: false)

Pocket.create(color: 'Camel Yellow', image: 'camel_pocket_trans.png')
Pocket.create(color: 'Worn Out Garnet', image: 'garnet_pocket_trans.png')
Pocket.create(color: 'Lead Blue', image: 'lead_pocket_trans.png')
puts'seed done'