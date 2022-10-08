puts "seeding"
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
heroes = Hero.create([
    {name: "vee", super_name: "Hero V"},
    {name: "Robi", super_name: "Hero R"},
    {name: "Shi", super_name: "Hero S"},
    {name: "mom", super_name: "Hero M"}
    ])

powers = Power.create([
    { name: "super speed", description: "very fast"},
    { name: "telepotation", description: "very fast"},
    { name: "invisibility", description: "invisible"}
    ])

heropowers = HeroPower.create([
    {strength: "Strong", hero_id: 1,power_id: 1},
    {strength: "Strong", hero_id: 2,power_id: 1},
    {strength: "Average", hero_id: 3,power_id: 2},
    {strength: "Weak", hero_id: 4,power_id: 3}
    ])
puts "seeded"
