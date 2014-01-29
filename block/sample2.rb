tweets = ["first tweet", "second tweet"]
tweets.each do |tweet|
  puts tweet
end

printer = lambda { |tweet| puts tweet + "  from lambda" }
#tweets.each(printer)
tweets.each(&printer)