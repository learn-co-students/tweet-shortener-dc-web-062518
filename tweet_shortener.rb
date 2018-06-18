# Write your code here.
require 'pry'
def dictionary
  dictionary = {:hello => 'hi', :to => '2', :too => '2', :two => '2', :for => '4',:For => '4', :four => '4', :be => 'b', :you => 'u', :at => '@', :and => '&'}
end
def word_substituter(tweet)
  arr = tweet.split(" ")
  keys = dictionary.keys
  final = []
  i = 0
  j = 0 
  while i < arr.length 
    while j < keys.length
      if arr[i]==keys[j].to_s
        arr[i] = dictionary[keys[j]]
         
      end
      j += 1
    end
    j = 0
    i += 1
  end
  arr.join(" ")  
   #tweet.split.map{|word| dictionary.keys.include?(word) ? word = dictionary[word] : word }.join
 end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? tweet = word_substituter(tweet) : tweet
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet = "#{word_substituter(tweet)[0..136]}..." : tweet
  tweet
end
  