class Client::GroupsController < Client::BaseController

    def index  
        @groups = current_groups.groups.paginate(page: params[:page], per_page: 10)
        @group = Group.new     
    end

    def create
        group = current_user.groups.new(group_params)
        if group.save
          flash[:notice] = "Group created successfully."
          redirect_to client_groups_path
        else
          render('new')
        end
    end
    
    private

    def group_params
        params.require(:group).permit(:title, :description)
    end
    
end