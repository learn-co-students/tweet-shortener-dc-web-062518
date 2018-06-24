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
  dictionary.keys.collect do |d|
    tweet_one.gsub! d  do |s|
      if s.length == d.length
        dictionary[d]
      end
    end
  end 
  tweet_one
end