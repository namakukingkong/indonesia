namespace :db do
  task provinces: :environment do
    target = File.join(Rails.root, 'db', 'provinces.rb')
    load(target)
  end
  task regencies: :environment do
    target = File.join(Rails.root, 'db', 'regencies.rb')
    load(target)
  end
  task districts: :environment do
    target = File.join(Rails.root, 'db', 'districts.rb')
    load(target)
  end
  task villages: :environment do
    target = File.join(Rails.root, 'db', 'villages.rb')
    load(target)
  end
end