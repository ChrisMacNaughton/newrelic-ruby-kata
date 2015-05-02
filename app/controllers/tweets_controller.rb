class TweetsController < ApplicationController
  
  def index
    response = HTTParty.get('http://twitter.com/newrelic')
    
    parsed_data = Nokogiri::HTML.parse response.body
    tweetNodes = parsed_data.css(".js-tweet-text")
    @nodes = tweetNodes.map(&:inner_html)

    expires_in 600.seconds, public: true
  end
end
