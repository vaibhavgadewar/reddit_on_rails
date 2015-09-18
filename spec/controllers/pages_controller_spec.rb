describe PagesController do
  #include Devise::TestHelpers

  describe "GET index" do
    it "successfully renders the index template" do
      expect(controller).to receive(:index) # this line probably of dubious value
      get :index
      expect(response).to be_successful
      expect(response).to render_template(:index)
    end
  end

  it "should display user logged in status" do
   
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    expect(response).to be_successful
    #response.should redirect_to(new_user_session_path)
    expect(response.status).to eq(200)
  end
end