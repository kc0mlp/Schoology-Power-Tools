class WelcomeController < ApplicationController
  #before_filter :authenticate_user!
  def index
    # Setup Oauth consumer info for header
    # ToDo: Convert this to environment config
    consumer = OAuth::Consumer.new('6bef9cd9f459440b429c1d9186c180d5055aeb4b9', '6dbf4181976a60b0ea93a61e48fcb99f',
                                   {
                                       :site => 'https://api.schoology.com/v1',
                                       :scheme => :header,
                                       :http_method => :get
                                   })
    resp = consumer.request(:get, '/messages/inbox')

    @data = resp.body


  end

end