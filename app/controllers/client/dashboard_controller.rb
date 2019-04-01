class Client::DashboardController < Client::BaseController

    def index
        
    end

    def check_js
        @meow = 'hello oil'
        respond_to do |format|
            format.js
          end
    end
    
end