require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_users
  end
end

def make_users
  admin = User.create!(:email => "stephen@letmesingnow.com",
                       :password => "qwerty",
                       :password_confirmation => "qwerty",
                       :role => :admin)
  10.times do |n|
    email = Faker::Internet.email
    password  = "password"
    User.create!(:email => email,
                 :password => password,
                 :password_confirmation => password)
  end
  
  4.times do |n|
    name = "Dj " + Faker::Name.first_name
    Dj.create!(:name => name,
               :user_id => n+2,
               :free => true)
    User.find(n+2).update_attributes(:role => :dj)
    
    20.times do |a|
      artist = Faker::Company.name
      3.times do |t|
        title = Faker::Company.catch_phrase
        Song.create!(:dj_id => n,
                     :artist => artist,
                     :title => title)
      end
    end
  end
end

def make_microposts
  User.all(:limit => 6).each do |user|
    50.times do
      content = Faker::Lorem.sentence(5)
      user.microposts.create!(:content => content)
    end
  end
end

def make_relationships
  users = User.all
  user  = users.first
  following = users[1..50]
  followers = users[3..40]
  following.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end

