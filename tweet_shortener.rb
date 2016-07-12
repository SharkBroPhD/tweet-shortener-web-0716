def word_substituter(string)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&",
    }
  split_string=string.split(" ")
  split_string.map! do |word|
    if dictionary.keys.any? {|key| key == word.downcase}
      #replace word with value of key that matches the word
      dictionary["#{word.downcase}"]
    else word 
    end
  end
  return split_string.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length>140
      word_substituter(tweet)
    else tweet
    end
end

def shortened_tweet_truncator (tweet)
  if tweet.length<140
    tweet
  elsif tweet.length>140
    if word_substituter(tweet).length>140
      word_substituter(tweet)[0..136]+"..."
    else
      word_substituter(tweet)
    end
  end
end

