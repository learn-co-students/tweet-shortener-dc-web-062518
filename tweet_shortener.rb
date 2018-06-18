def dictionary
  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(tweet)
  shortened_tweet = []
  dictionary_a = dictionary.keys
  tweet_a = tweet.split(' ')
  tweet_a.each do |word|
    dictionary_a.include?(word) ? shortened_tweet << dictionary[word] : shortened_tweet << word
  end
  shortened_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    new_tweet = new_tweet[0..139]
  else 
    new_tweet
  end


end
  
  