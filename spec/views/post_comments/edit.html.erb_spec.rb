require 'spec_helper'

describe "post_comments/edit" do
  before(:each) do
    @post_comment = assign(:post_comment, stub_model(PostComment,
      :author => "MyString",
      :comment => "MyText",
      :post => nil
    ))
  end

  it "renders the edit post_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_comment_path(@post_comment), "post" do
      assert_select "input#post_comment_author[name=?]", "post_comment[author]"
      assert_select "textarea#post_comment_comment[name=?]", "post_comment[comment]"
      assert_select "input#post_comment_post[name=?]", "post_comment[post]"
    end
  end
end
