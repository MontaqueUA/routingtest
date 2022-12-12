UserOrganization.destroy_all
Organization.destroy_all
User.destroy_all

puts "Data deleted"

routing = Organization.create(name:"Routing")
pricing = Organization.create(name:"Pricing")

diego = routing.drivers.create(name:"Diego", last_name:"Lira")
adan = routing.drivers.create(name:"Adan", last_name:"Mendez")
carlos = routing.drivers.create(name:"Carlos", last_name:"Manzur")

andrea = pricing.drivers.create(name:"Andrea", last_name:"Alvarez")
mauro = pricing.drivers.create(name:"Mauro", last_name:"Fernandez")

ve1 = routing.vehicles.create(plate: "VE1")
ve2 = routing.vehicles.create(plate: "VE2")
ve3 = routing.vehicles.create(plate: "VE3")
ve4 = routing.vehicles.create(plate: "VE4")
ve5 = routing.vehicles.create(plate: "VE5")

ve6 = pricing.vehicles.create(plate: "VE6")
ve7 = pricing.vehicles.create(plate: "VE7")
ve8 = pricing.vehicles.create(plate: "VE8")

nacho = User.create(password:"nachos", email:"nacho@gmail.com")
ignacio = User.create(password:"ignacio", email:"ignacio@gmail.com")

nacho_routing = UserOrganization.new(user: nacho, organization: routing, active: true)
ignacio_pricing = UserOrganization.new(user: ignacio, organization: pricing, active: true)
nacho_pricing = UserOrganization.new(user: nacho, organization: pricing, active: false)

r1 = routing.routes.create(
	starts_at: DateTime.new(2022,1,19,9,00,0), 
	ends_at: DateTime.new(2022,1,19,11,30,0), 
	travel_time: 60, 
	total_stops: 4, 
	action: "pickup",
	driver: diego,
	vehicle: ve2)
r2 = routing.routes.create(
	starts_at: DateTime.new(2022,1,19,9,00,0), 
	ends_at: DateTime.new(22022,1,19,10,10,0), 
	travel_time: 60, 
	total_stops: 4, 
	action: "pickup")
r3 = routing.routes.create(
	starts_at: DateTime.new(2022,1,19,11,00,0), 
	ends_at: DateTime.new(2022,1,19,13,30,0), 
	travel_time: 60, 
	total_stops: 4, 
	action: "pickup")