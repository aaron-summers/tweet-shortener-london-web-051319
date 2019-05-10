# Write your code here.

def dictionary
  sub = {
    "hello" => 'hi'
    "to, two, too" =>'2' 
    "for, four" => '4'
    'be' => 'b'
    'you' => 'u'
    "at" => "@" 
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(' ').collect do |word| 
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else
      return word
    end
    
end