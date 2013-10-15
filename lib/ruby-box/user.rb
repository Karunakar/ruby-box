module RubyBox
  class User < Item
    def initialize(session)
      @session = session
    end
    
    def enterprise
      resp = @session.get( "#{RubyBox::API_URL}/users/#{id}?fields=enterprise" )
      resp["enterprise"]
    end

    def user_list
     	 resp = @session.get( "#{RubyBox::API_URL}/users" )
    end 

    private

    def resource_name
      'users'
    end
    
  end
end
