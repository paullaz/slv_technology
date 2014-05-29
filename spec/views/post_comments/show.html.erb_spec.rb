require 'spec_helper'

describe "post_comments/show" do
  before(:each) do
    @post_comment = assign(:post_comment, stub_model(PostComment,
      :author => "Author",
      :comment => "MyText",
      :post => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
