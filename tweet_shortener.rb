require 'pry'

def dictionary
  dict =   {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2', 
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"
  }
end

def word_substituter(tweet_one)
  str = tweet_one.split.collect do |tw1| 
    if dictionary[tw1.downcase]
      dictionary[tw1.downcase]
    else
      tw1
    end 
  end
  str.join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tw|
    puts word_substituter(tw)
  end
end


def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    word_substituter(tweet_one)
  
  else
    tweet_one
  end
end


def shortened_tweet_truncator(tweet_one_short)
  if selective_tweet_shortener(tweet_one_short).length >= 140
    return selective_tweet_shortener(tweet_one_short)[0..136] + '...'


    
  else
    selective_tweet_shortener(tweet_one_short)
  end
end