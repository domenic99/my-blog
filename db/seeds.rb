# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

until Article.all.size == 1000
    Article.create(
        title: "test_seed #{Article.all.size}",
        content: "test_seed_content",
        user_id: rand(User.all.size)+1
    )
end