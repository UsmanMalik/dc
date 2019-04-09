class Client::UsersController < Client::BaseController

    def index
        @app_users = AppUser.where(client_admin_id: current_user.id).paginate(page: params[:page], per_page: 10)
        @new_app_user = AppUser.new
    end

    def new
        
    end


    def create
        
    end
    
end