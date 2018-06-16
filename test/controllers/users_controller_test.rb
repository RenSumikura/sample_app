require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end
  
def project_params
    params.require(:project).permit(:title, :tasks_attributes => [:id, :name, :project_id,  :_destroy])
end

end
