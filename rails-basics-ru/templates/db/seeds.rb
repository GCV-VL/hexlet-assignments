require 'faker'
40.times do |index|
    Task.create(
        creator: Faker::Name.unique.name,
        completed: false,
        description: Faker::Lorem.paragraph,
        name: Faker::Lorem.sentence,
        performer: Faker::Name.name,
        status: 'new',

    )
end