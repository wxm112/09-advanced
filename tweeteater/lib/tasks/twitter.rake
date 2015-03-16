# rake twitter:clear

namespace :twitter do 
  desc "Clear the user and tweet tables"
  task :clear => :environment do 
    User.destroy_all
    Tweet.destroy_all
  end

  desc "Creates test data with fake Latin tweets"
  task :posts, [:user_count] => :environment do |t, args|
    FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
  end

  desc "Search Twitter for a query and a number of tweets"
  task :search, [:query, :limit] => :environment do |t, args|
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "c9fP2SBZyoahUCRVkcnMovRkS"
      config.consumer_secret     = "4JhAucHkBxVPgQD4qAh6PnNg9Tmz6KBtljcjidp3sd001qiLht"
      config.access_token        = "3002871168-Zqy9dtj3mE5lHkpK6do37Qh6mBO0QlnYiz1rrH7"
      config.access_token_secret = "tm1T5mdsO9vJQqSxnbx8PAVPxcp1pv00jbUyGe5dgD6Yp"
    end
    client.search(args[:query]).take(args[:limit].to_i).collect do |tweet|
      puts "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end