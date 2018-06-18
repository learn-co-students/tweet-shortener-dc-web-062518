def dictionary
dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "For" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  keys_array = dictionary.keys
  interim_tweet = tweet.split(" ")
  final_tweet_array = interim_tweet.map do |word|
    if keys_array.include?(word)
      dictionary[word]
    else
      word
    end
  end
  final_tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  keys_array = dictionary.keys
  tweet_array.each do |tweet|
    interim_tweet = tweet.split(" ")
    final_tweet_array = interim_tweet.map do |word|
      if keys_array.include?(word)
        dictionary[word]
      else
        word
      end
    end
    puts final_tweet_array.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  keys_array = dictionary.keys
    if tweet.length > 140
      interim_tweet = tweet.split(" ")
      final_tweet_array = interim_tweet.map do |word|
        if keys_array.include?(word)
          dictionary[word]
        else
          word
        end
      end
      return final_tweet_array.join(" ")
    else
      return tweet
    end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    var = new_tweet[0..136]
    return "#{var}..."
  else
    new_tweet
  end
end
