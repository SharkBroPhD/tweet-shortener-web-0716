require 'pry'

# dictionary = {
#   "hello" => "hi",
#   "to" => "2",
#   "two" => "2",
#   "too"=>"2",
#   "be"=>"b",
#   "you"=>"u",
#   "at"=>"@",
#   "and"=>"&",
#   }

big = ["wow you guys, this is just Too crazy. Where my dogs at", "too Too my bum", "watch out space ghost! You dirty dog."]
tweet_one="Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
tweet_two="OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
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
      binding.pry
      puts word_substituter(tweet)
    else puts tweet
    end
end

selective_tweet_shortener(tweet_one)
selective_tweet_shortener(tweet_two)


