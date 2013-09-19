module Twitter
	class Tweet
    attr_accessor :status, :author
      def initialize(status, author)
        @status = status
        @author = author
      end
    def self.give_me_tweets(number)
      number.times do |t|
        tweets << Tweet.new ("My status: #{status}" , "My Author: #{author}")
      end
      tweets
    end
	end
end
