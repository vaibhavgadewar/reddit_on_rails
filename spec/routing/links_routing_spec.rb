describe "routes for links" do
  it "routes links/new to the new action of links controller" do
    expect(get("/links/new")).to route_to("links#new")
  end
end

describe "routes for links" do
  it "routes links/new to the new action of links controller" do
    expect(get("/links/5")).to route_to("links#show", :id => "5")
  end
end