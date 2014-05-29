require 'spec_helper'

describe "post_comments/new" do
  before(:each) do
    assign(:post_comment, stub_model(PostComment,
      :author => "MyString",
      :comment => "MyText",
      :post => nil
    ).as_new_record)
  end

  it "renders new post_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_comments_path, "post" do
      assert_select "input#post_comment_author[name=?]", "post_comment[author]"
      assert_select "textarea#post_comment_comment[name=?]", "post_comment[comment]"
      assert_select "input#post_comment_post[name=?]", "post_comment[post]"
    end
  end
end
