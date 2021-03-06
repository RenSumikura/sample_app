class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  before_action :admin_user, only: :destroy
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end  
  
  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
 
  def edit
    @user = User.find(params[:id])
  #  render :layout => 'users'
  end
 
 
 
  def hotel_params
        params.require(:hotel).permit(
          :name, :address, :foundation, :tel,
          roomtypes_attributes: [:id, :hotel_id, :name, :capacity, :note, :_destroy]
        )
  end
 
 
  
  private
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end  
    
def project_params
      params.require(:user).permit(:title, :tasks_attributes => [:id, :name, :user_id,  :_destroy])
end

      
end

