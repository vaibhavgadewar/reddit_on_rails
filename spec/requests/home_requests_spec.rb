describe "Home requests" do 
	it "should render the index template on GET" do
		get '/'
		expect(response).to be_successful
		expect(response).to render_template(:index)
	end
end