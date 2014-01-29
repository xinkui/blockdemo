class Timeline
  attr_accessor :tweets

  def print
    if block_given?
      tweets.each{ |tweet| yield tweet }
    else
      puts tweets.join(", ")
    end
  end
end

timeline = Timeline.new
timeline.tweets = ["One", "Two"]

timeline.print

printer = lambda { |tweet| puts "tweet: #{tweet}"}
timeline.print(&printer)