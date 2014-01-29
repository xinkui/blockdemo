class Tweet
  #attr_accessor tweets


  def print(name)
    puts "do same thing 1 before"
    puts "do same thing 2 before"
    # different code here
    # puts different tweet
    yield name

    puts "do same thing 3 after"
    puts "do same thing 4 after"

  end

  def print1(name)
    print(name) { |name|
      puts name + '  yield 1'
    }
  end

  def print2(name)
    print(name) { |name|
      puts name + ' yield 2'
    }
  end

  #printer1 = lambda { puts 'yield 1 ' }
  #
  #printer2 = lambda { puts 'yield 2'}

end



tweet = Tweet.new
tweet.print1('getdown')
tweet.print2('milan')

