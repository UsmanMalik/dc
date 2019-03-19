class Client::UserLocationsController < Client::BaseController

    def index
        
    end

    def show

        @user_locations = UserLocation.all
        
    end
    
end