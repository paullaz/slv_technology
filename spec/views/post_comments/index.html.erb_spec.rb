require 'spec_helper'

describe "post_comments/index" do
  before(:each) do
    assign(:post_comments, [
      stub_model(PostComment,
        :author => "Author",
        :comment => "MyText",
        :post => nil
      ),
      stub_model(PostComment,
        :author => "Author",
        :comment => "MyText",
        :post => nil
      )
    ])
  end

  it "renders a list of post_comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
