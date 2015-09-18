describe "Routing" do
  it "routes / to home#index" do
    expect(get("/")).to route_to("pages#index")
  end
end