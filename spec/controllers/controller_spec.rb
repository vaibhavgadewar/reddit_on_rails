require 'support/controller_macros'

describe "UsersController" do
  
    login_user

  it "should have a current_user" do
    
    # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
    subject.current_user.should_not be_nil
  end

  it "should get index" do

    # Note, rails 3.x scaffolding may add lines like get :index, {}, valid_session
    # the valid_session overrides the devise login. Remove the valid_session from your specs
    get 'index'
    expect(response).should be_success
  end
end