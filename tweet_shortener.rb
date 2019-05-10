# Write your code here.
require 'pry'

def dictionary
  sub = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end

def word_substituter(tweet)
 words = tweet.split(' ')
 words.collect do |word| 
    if dictionary.keys.include?(word)
      #binding.pry
      word = dictionary[word.downcase]
      #binding.pry
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener