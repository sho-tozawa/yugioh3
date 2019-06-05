namespace :sample_data do
  task create_monsters: :environment do
    puts 'アイウエオ'
    10.times do |n|
      monster = Monster.new(
        name: "モンスター No#{n}",
        attack: n,
        defense: n
      )
      monster.save!
      puts monster.id
    end
  end
end
