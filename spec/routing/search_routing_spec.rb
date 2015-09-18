describe "routes for search" do
  it "routes /search to the search controller" do
    expect(get("/search")).to route_to("search#index")
  end
end